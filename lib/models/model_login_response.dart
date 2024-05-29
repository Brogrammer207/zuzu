import 'dart:convert';
ModelLoginResponse modelLoginResponseFromJson(String str) => ModelLoginResponse.fromJson(json.decode(str));
String modelLoginResponseToJson(ModelLoginResponse data) => json.encode(data.toJson());
class ModelLoginResponse {

  ModelLoginResponse({
      this.status, 
      this.message, 
      this.result,});

  ModelLoginResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result?.add(Result.fromJson(v));
      });
    }
  }
  num? status;
  String? message;
  List<Result>? result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (result != null) {
      map['result'] = result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Result resultFromJson(String str) => Result.fromJson(json.decode(str));
String resultToJson(Result data) => json.encode(data.toJson());
class Result {
  Result({
      this.id, 
      this.channelId, 
      this.channelName, 
      this.fullName, 
      this.email, 
      this.mobileNumber, 
      this.type, 
      this.image, 
      this.coverImg, 
      this.description, 
      this.deviceType, 
      this.deviceToken, 
      this.website, 
      this.facebookUrl, 
      this.instagramUrl, 
      this.twitterUrl, 
      this.totalAmount, 
      this.bankName, 
      this.bankCode, 
      this.bankAddress, 
      this.ifscNo, 
      this.accountNo, 
      this.idProof, 
      this.address, 
      this.city, 
      this.state, 
      this.country, 
      this.pincode, 
      this.userPenalStatus, 
      this.status, 
      this.createdAt, 
      this.updatedAt, 
      this.isBuy,});

  Result.fromJson(dynamic json) {
    id = json['id'];
    channelId = json['channel_id'];
    channelName = json['channel_name'];
    fullName = json['full_name'];
    email = json['email'];
    mobileNumber = json['mobile_number'];
    type = json['type'];
    image = json['image'];
    coverImg = json['cover_img'];
    description = json['description'];
    deviceType = json['device_type'];
    deviceToken = json['device_token'];
    website = json['website'];
    facebookUrl = json['facebook_url'];
    instagramUrl = json['instagram_url'];
    twitterUrl = json['twitter_url'];
    totalAmount = json['total_amount'];
    bankName = json['bank_name'];
    bankCode = json['bank_code'];
    bankAddress = json['bank_address'];
    ifscNo = json['ifsc_no'];
    accountNo = json['account_no'];
    idProof = json['id_proof'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    pincode = json['pincode'];
    userPenalStatus = json['user_penal_status'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isBuy = json['is_buy'];
  }
  num? id;
  String? channelId;
  String? channelName;
  String? fullName;
  String? email;
  String? mobileNumber;
  num? type;
  String? image;
  String? coverImg;
  String? description;
  num? deviceType;
  String? deviceToken;
  String? website;
  String? facebookUrl;
  String? instagramUrl;
  String? twitterUrl;
  num? totalAmount;
  String? bankName;
  String? bankCode;
  String? bankAddress;
  String? ifscNo;
  String? accountNo;
  String? idProof;
  String? address;
  String? city;
  String? state;
  String? country;
  num? pincode;
  num? userPenalStatus;
  num? status;
  String? createdAt;
  String? updatedAt;
  num? isBuy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['channel_id'] = channelId;
    map['channel_name'] = channelName;
    map['full_name'] = fullName;
    map['email'] = email;
    map['mobile_number'] = mobileNumber;
    map['type'] = type;
    map['image'] = image;
    map['cover_img'] = coverImg;
    map['description'] = description;
    map['device_type'] = deviceType;
    map['device_token'] = deviceToken;
    map['website'] = website;
    map['facebook_url'] = facebookUrl;
    map['instagram_url'] = instagramUrl;
    map['twitter_url'] = twitterUrl;
    map['total_amount'] = totalAmount;
    map['bank_name'] = bankName;
    map['bank_code'] = bankCode;
    map['bank_address'] = bankAddress;
    map['ifsc_no'] = ifscNo;
    map['account_no'] = accountNo;
    map['id_proof'] = idProof;
    map['address'] = address;
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    map['pincode'] = pincode;
    map['user_penal_status'] = userPenalStatus;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['is_buy'] = isBuy;
    return map;
  }

}