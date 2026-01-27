// // HTMLContainer = document.getElementById("controlAddIn");
// // Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("ControlReady",[]);



// // Tell AL the control add-in is ready (optional but useful)
// Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnControlReady', []);



// Minimal implementation: receive HTML and inject it
(function () {
  // The object name must match the AL controladdin name
  window.HtmlHost = {
    RenderHtml: function (html) {
      var id = 'bc-htmlhost-root';
      var root = document.getElementById(id);
      if (!root) {
        root = document.createElement('div');
        root.id = id;
        document.body.appendChild(root);
      }
      root.innerHTML = html; // Inject AL-generated HTML
    }
  };
})();

