import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../helper/helper.dart';

String deviceId = "";

class Repositories {
  static String userInfo = 'user_info';
  /// Notes....
  /// Login :
  /// Google login 2
  /// Apple login 3
  /// OTP : 1




  // Future assignDeviceToken() async {
  //   try {
  //     await ClientInformation.fetch().then((value) {
  //       deviceId = value.deviceId.toString();
  //     });
  //   } on PlatformException {
  //     log('Failed to get client information');
  //   }
  // }

  // static Future<LoginModel?> getUserInfo() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   if (preferences.getString(userInfo) != null) {
  //     return LoginModel.fromJson(jsonDecode(preferences.getString(userInfo)!));
  //   } else {
  //     return null;
  //   }
  // }

  static Future removeUserInfo() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getString(userInfo) != null) {
      preferences.remove(userInfo);
      // return LoginModel.fromJson(jsonDecode(preferences.getString(userInfo)!));
    }
  }

  static Future<String?> getFromLocal(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  Future<dynamic> postApi({
    BuildContext? context,
    required String url,
    // bool? showLoader = false,
    bool? showMap = false,
    bool? showResponse = true,
    bool? saveToLocal = false,
    Map<String, dynamic>? mapData,
  }) async {
    OverlayEntry loader = Helper.overlayLoader(context);
    if (context != null) {
      Overlay.of(context).insert(loader);
    }

    // LoginModel model = LoginModel();
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // if (preferences.getString(userInfo) != null) {
    //   model = LoginModel.fromJson(jsonDecode(preferences.getString(userInfo)!));
    // } else {
    //   await assignDeviceToken();
    //   mapData ??= {};
    //
    //   mapData["device_id"] = deviceId;
    // }

    try {
      final Map<String, String> headers = {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
        // if (model.authToken != null) HttpHeaders.authorizationHeader: 'Bearer ${model.authToken}'
      };
      mapData ??= {};
      if (kDebugMode) {
        log("API Url.....  $url");
        log("API mapData.....  $mapData");
        log("API mapData Encoded.....  ${jsonEncode(mapData)}");
        if (true) {
          log("API headers.....  $headers");
        }
      }
      http.Response response = await http.post(Uri.parse(url), body: jsonEncode(mapData), headers: headers);
      if (kDebugMode) {
        if (showResponse == true) {
          log("API Response........  ${response.body}");
          log("API mapData........  $mapData");
          log("API Response Url........  $url");
          log("API Response Status Code........  ${response.statusCode}");
          log("API Response Reason Phrase........  ${response.reasonPhrase}");
        }
      }

      Helper.hideLoader(loader);

      if (response.statusCode == 200 || response.statusCode == 404 || response.statusCode == 400) {
        return response.body;
      } else if (response.statusCode == 401) {
        logOutUser();
      } else {
        showToast(response.body);
        throw Exception(response.body);
      }
    } on SocketException catch (e) {
      Helper.hideLoader(loader);
      showToast("No Internet Access");
      throw Exception(e);
    } catch (e) {
      Helper.hideLoader(loader);
      throw Exception(e);
    }
  }

  saveLoginDetails(String loginResponse) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(Repositories.userInfo, loginResponse);
  }

  Future<dynamic> getApi({
    BuildContext? context,
    required String url,
    bool? showMap = true,
    bool? showResponse = true,
    bool? returnResponse = false,
    bool? saveToLocal = false,
    Map<String, dynamic>? mapData,
  }) async {
    OverlayEntry loader = Helper.overlayLoader(context);
    if (context != null) {
      Overlay.of(context).insert(loader);
    }

    // LoginModel model = LoginModel();
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // if (preferences.getString(userInfo) != null) {
    //   model = LoginModel.fromJson(jsonDecode(preferences.getString(userInfo)!));
    // }
    try {
      final Map<String, String> headers = {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
        // if (model.authToken != null) HttpHeaders.authorizationHeader: 'Bearer ${model.authToken}'
      };

      Uri uri = Uri.parse(url).replace(
        queryParameters: mapData
      );

      if (kDebugMode) {
        log("API Url.....  $uri");
        log("API headers.....  $headers");
      }

      http.Response response = await http.get(uri, headers: headers);

      if (kDebugMode) {
        if (showResponse == true) {
          log("API Url.....  $url");
          log("API Response........  ${response.body}");
          log("API Response Status Code........  ${response.statusCode}");
          log("API Response Reason Phrase........  ${response.reasonPhrase}");
        }
      }

      Helper.hideLoader(loader);
      if (returnResponse!) {
        return response;
      } else {
        if (response.statusCode == 200 || response.statusCode == 400 || response.statusCode == 404) {
          if (saveToLocal == true) {
            SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
            sharedPreferences.setString(url, response.body);
          }
          return response.body;
        } else if (response.statusCode == 401) {
          logOutUser();
        } else {
          // showToast(response.body);
          throw Exception(response.statusCode);
        }
      }
    } on SocketException {
      Helper.hideLoader(loader);
      showToast("No Internet Access");
      throw Exception("No Internet Access");
    } catch (e) {
      Helper.hideLoader(loader);
      // showToast(e.toString());
      throw Exception(e);
    }
  }

  Future<dynamic> deleteApi({
    BuildContext? context,
    required String url,
    bool? showMap = true,
    bool? showResponse = true,
    bool? returnResponse = false,
    dynamic mapData,
  }) async {
    OverlayEntry loader = Helper.overlayLoader(context);
    if (context != null) {
      Overlay.of(context).insert(loader);
    }

    // LoginModel model = LoginModel();
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // if (preferences.getString(userInfo) != null) {
    //   model = LoginModel.fromJson(jsonDecode(preferences.getString(userInfo)!));
    // }
    try {
      final Map<String, String> headers = {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
        // if (model.authToken != null) HttpHeaders.authorizationHeader: 'Bearer ${model.authToken}'
      };

      if (kDebugMode) {
        log("API Url.....  $url");
        log("API headers.....  $headers");
      }

      http.Response response = await http.delete(Uri.parse(url), headers: headers);

      if (kDebugMode) {
        if (showResponse == true) {
          log("API Url.....  $url");
          log("API Response........  ${response.body}");
          log("API Response Status Code........  ${response.statusCode}");
          log("API Response Reason Phrase........  ${response.reasonPhrase}");
        }
      }

      Helper.hideLoader(loader);
      if (returnResponse!) {
        return response;
      } else {
        if (response.statusCode == 200 || response.statusCode == 400) {
          return response.body;
        } else if (response.statusCode == 401) {
          logOutUser();
        } else {
          // showToast(response.body);
          throw Exception(response.statusCode);
        }
      }
    } on SocketException {
      Helper.hideLoader(loader);
      showToast("No Internet Access");
      throw Exception("No Internet Access");
    } catch (e) {
      Helper.hideLoader(loader);
      // showToast(e.toString());
      throw Exception(e);
    }
  }

  Future<dynamic> multiPartApi({
    required mapData,
    required Map<String, File> images,
    BuildContext? context,
    required String url,
  }) async {
    OverlayEntry loader = Helper.overlayLoader(context);
    if (context != null) {
      Overlay.of(context).insert(loader);
    }

    // LoginModel model = LoginModel();
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // if (preferences.getString(userInfo) != null) {
    //   model = LoginModel.fromJson(jsonDecode(preferences.getString(userInfo)!));
    // }
    try {
      final Map<String, String> headers = {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptHeader: 'application/json',
        // if (model.authToken != null) HttpHeaders.authorizationHeader: 'Bearer ${model.authToken}'
      };
      var request = http.MultipartRequest('POST', Uri.parse(url));

      request.headers.addAll(headers);

      request.fields.addAll(mapData);
      for (var item in images.entries) {
        if (item.value.existsSync()) {
          request.files.add(await _multipartFile(item.key.toString(), item.value));
        }
      }
      if (kDebugMode) {
        log(url);
        log(request.headers.toString());
        log(request.fields.toString());
        log(request.files.map((e) => e.filename).toList().toString());
      }

      final response = await request.send();
      String value = await response.stream.bytesToString();
      log(value);
      Helper.hideLoader(loader);
      if (response.statusCode == 200) {
        return value;
      } else if (response.statusCode == 401) {
        logOutUser();
        throw Exception(value);
      } else {
        Helper.hideLoader(loader);
        throw Exception(value);
      }
    } on SocketException catch (e) {
      Helper.hideLoader(loader);
      showToast("No Internet Access");
      throw Exception(e);
    } catch (e) {
      Helper.hideLoader(loader);
      showToast("Something went wrong.....${e.toString()}");
      throw Exception(e);
    }
  }

  Future<http.MultipartFile> _multipartFile(String? fieldName, File file1) async {
    return http.MultipartFile(
      fieldName ?? 'file',
      http.ByteStream(Stream.castFrom(file1.openRead())),
      await file1.length(),
      filename: file1.path.split('/').last,
    );
  }

  Future<void> logOutUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
    showToast("Access denied");
    // Get.offAll(() => const LoginScreen());
  }
}

class CloseableMultipartRequest extends http.MultipartRequest {
  http.Client client = http.Client();

  CloseableMultipartRequest(
      super.method,
      super.uri, {
        required this.onProgress,
      });

  void close() => client.close();

  @override
  Future<http.StreamedResponse> send() async {
    try {
      var response = await client.send(this);
      var stream = onDone(response.stream, client.close);
      return http.StreamedResponse(
        http.ByteStream(stream),
        response.statusCode,
        contentLength: response.contentLength,
        request: response.request,
        headers: response.headers,
        isRedirect: response.isRedirect,
        persistentConnection: response.persistentConnection,
        reasonPhrase: response.reasonPhrase,
      );
    } catch (_) {
      client.close();
      rethrow;
    }
  }

  final void Function(int bytes, int totalBytes) onProgress;

  @override
  http.ByteStream finalize() {
    final byteStream = super.finalize();
    // if (onProgress == null) return byteStream;

    final total = contentLength;
    int bytes = 0;

    final t = StreamTransformer.fromHandlers(
      handleData: (List<int> data, EventSink<List<int>> sink) {
        bytes += data.length;
        onProgress(bytes, total);
        if (total >= bytes) {
          sink.add(data);
        }
      },
    );
    final stream = byteStream.transform(t);
    return http.ByteStream(stream);
  }

  Stream<T> onDone<T>(Stream<T> stream, void Function() onDone) =>
      stream.transform(StreamTransformer.fromHandlers(handleDone: (sink) {
        sink.close();
        onDone();
      }));
}
