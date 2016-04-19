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
