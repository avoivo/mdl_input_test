// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
library app;

import 'dart:js';
import 'package:angular2/core.dart';
import 'package:angular2/common.dart';

part 'mdl_upgrade.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [MdlUpgradeDirective, FORM_DIRECTIVES]
)
class AppComponent {
  String first;

  String second;
  Control secondControl;
  AppComponent(){
    secondControl = new Control(null, Validators.required);
  }
}
