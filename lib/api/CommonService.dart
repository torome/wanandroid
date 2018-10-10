import 'dart:async';

import 'package:dio/dio.dart';
import 'package:wanandroid/model/homebanner/HomeBannerModel.dart';
import 'package:wanandroid/model/project/ProjectClassifyModel.dart';

import 'Api.dart';

class CommonService {
  void getBanner(Function callback) async {
    Dio().get(Api.HOME_BANNER).then((response) {
      callback(HomeBannerModel.fromJson(response.data));
    });
  }

  void getProjectClassify(Function callback) async {
    Dio().get(Api.PROJECT_CLASSIFY).then((response) {
      callback(ProjectClassifyModel.fromJson(response.data));
    });
  }

  Future<Response> getArticleListData(int page) async {
    return await Dio().get("${Api.HOME_LIST}$page/json");
  }

  Future<Response> getProjectListData(int page) async {
    return await Dio().get("${Api.HOME_LIST}$page/json");
  }
}
