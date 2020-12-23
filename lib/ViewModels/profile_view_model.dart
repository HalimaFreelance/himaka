import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:himaka/Models/ProfileResponse.dart';
import 'package:himaka/Models/login_response.dart';
import 'package:himaka/services/api.dart';
import 'package:himaka/services/locator.dart';
import 'package:himaka/utils/caching.dart';
import 'package:himaka/utils/globals.dart';

import '../Models/pre_register_response.dart';
import 'base_model.dart';

class ProfileViewModel extends BaseModel {
  ProfileResponse _profileResponse, _editedProfileResponse;
  LoginResponse _addressResponse;
  bool _answerValidate = true;
  bool _quesValidate = true;
  bool _methodIdValidate = true;
  bool _methodFieldValidate = true;
  bool _descValidate = true;
  PreRegisterResponse _preRegisterResponse;

  Api _api = locator<Api>();

  int _serviceId = 1;

  Future setAddress(String address) async {
    _serviceId = 2;
    setState(ViewState.Busy);
    Map<String, dynamic> data = {
      "token": Globals.userData.token,
      "address": address
    };
    _addressResponse = await _api.setAddressApi(data);
    setState(ViewState.Idle);
  }

  Future getProfileDetails(String lang) async {
    _serviceId = 1;
    setState(ViewState.Busy);
    Map<String, dynamic> token = {"token": Globals.userData.token};
    _profileResponse = await _api.getProfileApi(token);
    setState(ViewState.Idle);
  }

  Future<LoginResponse> logOut(String lang) async {
    _serviceId = 3;
    setState(ViewState.Busy);
    Map<String, dynamic> token = {"token": Globals.userData.token};
    var response = await _api.logOut(token);
    setState(ViewState.Idle);
    return response;
  }

  Future setProfileDetails(String lang, String fName, String lName,
      String phone, String oldPass, String newPass) async {
    _serviceId = 2;
    setState(ViewState.Busy);
    Map<String, dynamic> data = {
      'token': Globals.userData.token,
      'first_name': fName,
      'last_name': lName,
      'mobile': phone,
      'old_password': oldPass,
      'new_password': newPass,
    };

    _editedProfileResponse = await _api.setProfileApi(data);
    if (_editedProfileResponse != null && _editedProfileResponse.data != null) {
      var pass = Globals.userData.password = Globals.userData.password;
      Globals.userData = _editedProfileResponse.data.user;
      Globals.userData.password = pass;
      saveLoginData(json.encode(_editedProfileResponse.data.user));
    }
    setState(ViewState.Idle);
  }


  Future<ProfileResponse> changeProfileImage(String lang,File image) async {
    _serviceId = 4;
    setState(ViewState.Busy);
    ChangeImageCardReq req = new ChangeImageCardReq(
        lang,
        Globals.userData.token);

    _editedProfileResponse = await _api.setProfileApi(req.changeCardToMap(await getImageFile(image)));
    if (_editedProfileResponse != null && _editedProfileResponse.data != null) {
      var pass = Globals.userData.password = Globals.userData.password;
      Globals.userData = _editedProfileResponse.data.user;
      Globals.userData.password = pass;
      saveLoginData(json.encode(_editedProfileResponse.data.user));
    }
    setState(ViewState.Idle);
    return _editedProfileResponse;
  }

  Future<MultipartFile> getImageFile(File image) async {
    // final filePath = await FlutterAbsolutePath.getAbsolutePath(image.toString());
    if (image != null)
      return await MultipartFile.fromFile(image.path, filename: 'image1.jpg');
    return null;
  }

  Future<ProfileResponse> changeProfileQuestion(
      String ques, String answer) async {
    _serviceId = 2;
    setState(ViewState.Busy);
    Map<String, dynamic> data = {
      'token': Globals.userData.token,
      'question': ques,
      'answer': answer,
    };

    _editedProfileResponse = await _api.setProfileApi(data);
    if (_editedProfileResponse != null && _editedProfileResponse.data != null) {
      var pass = Globals.userData.password = Globals.userData.password;
      Globals.userData = _editedProfileResponse.data.user;
      Globals.userData.password = pass;
      saveLoginData(json.encode(_editedProfileResponse.data.user));
    }
    setState(ViewState.Idle);
    return _editedProfileResponse;
  }

  Future<ProfileResponse> changeWithdrawMethods(
      String val, String methodField, String desc) async {
    _serviceId = 2;
    setState(ViewState.Busy);
    Map<String, dynamic> data = {
      'token': Globals.userData.token,
      'withdraw_field_value': methodField,
      'withdraw_field_description': desc,
      'withdraw_way_id': val,
    };

    _editedProfileResponse = await _api.setProfileApi(data);
    if (_editedProfileResponse != null && _editedProfileResponse.data != null) {
      var pass = Globals.userData.password = Globals.userData.password;
      Globals.userData = _editedProfileResponse.data.user;
      Globals.userData.password = pass;
      saveLoginData(json.encode(_editedProfileResponse.data.user));
    }
    setState(ViewState.Idle);
    return _editedProfileResponse;
  }

  bool forthSignUpValidation(
      WithdrawMethod val, String methodField, String desc) {
    bool validate = true;
    if (val == null) {
      _methodIdValidate = false;
      validate = false;
    } else {
      _methodIdValidate = true;
      if (methodField.length < 8) {
        _methodFieldValidate = false;
        validate = false;
      } else {
        _methodFieldValidate = true;
      }

      if (desc.isEmpty) {
        _descValidate = false;
        validate = false;
      } else {
        _descValidate = true;
      }
    }

    notifyListeners();
    return validate;
  }

  Future preRegister(String lang) async {
    _serviceId = 1;
    setState(ViewState.Busy);
    LoginUserResponse user = new LoginUserResponse();
    _preRegisterResponse = await _api.preRegister(user.preRegisterToMap(lang));
    setState(ViewState.Idle);
  }

  bool quesAnswerValidation(String ques, String answer) {
    bool validate = true;

    if (ques != null && ques.isNotEmpty) {
      _quesValidate = true;
    } else {
      _quesValidate = false;
      validate = false;
    }
    if (answer.length < 4) {
      _answerValidate = false;
      validate = false;
    } else {
      _answerValidate = true;
    }

    notifyListeners();
    return validate;
  }

  set methodIdValidate(bool value) {
    _methodIdValidate = value;
    notifyListeners();
  }

  PreRegisterResponse get preRegisterResponse => _preRegisterResponse;

  bool get methodIdValidate => _methodIdValidate;

  int get serviceId => _serviceId;

  LoginResponse get addressResponse => _addressResponse;

  ProfileResponse get profileResponse => _profileResponse;

  ProfileResponse get editedProfileResponse => _editedProfileResponse;

  bool get quesValidate => _quesValidate;

  bool get answerValidate => _answerValidate;



  bool get methodFieldValidate => _methodFieldValidate;

  bool get descValidate => _descValidate;
}
