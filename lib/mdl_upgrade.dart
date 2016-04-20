part of app;

@Directive(
  selector: '[mdlUpgrade]'
)

class MdlUpgradeDirective implements OnInit{
  ElementRef _elRef;
  MdlUpgradeDirective(this._elRef);

  @override
  ngOnInit() {
    JsObject componentHandler = context["componentHandler"];
    componentHandler.callMethod("upgradeElement",
          [new JsObject.fromBrowserObject(_elRef.nativeElement)]);
  }
}


@Directive(
  selector: 'input[mdlUpgrade]'
)

class MdlInputDirective  implements OnInit{
  ElementRef _elRef;
  Renderer _renderer;
  NgControl _control;
  MdlInputDirective(this._elRef, this._renderer, this._control);

  @override
  ngOnInit() {

    if (_control?.errors?.containsKey("required") ?? false)
      _renderer.setElementAttribute(_elRef.nativeElement, "required", "");

    JsObject componentHandler = context["componentHandler"];
    componentHandler.callMethod("upgradeElement",
          [new JsObject.fromBrowserObject(_elRef.nativeElement)]);
  }

}
