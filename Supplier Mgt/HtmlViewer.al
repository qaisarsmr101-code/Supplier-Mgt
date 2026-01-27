// // controladdin "myHtmlViewer"
// // {
// //     RequestedHeight = 300;
// //     MinimumHeight = 150;
// //     HorizontalStretch = true;
// //     VerticalStretch = true;

// //     Scripts = 'HtmlViewer.js'; // optional if you want to render HTML
// //     procedure SetHtml(htmlText: Text);
// // }


// controladdin HtmlHost
// {
//     RequestedHeight = 260;
//     RequestedWidth  = 600;
//     VerticalStretch = true;
//     HorizontalStretch = true;

//     // Minimal web resources (no CSS)
//     StartupScript = 'controladdin/startup.js';
//     Scripts       = 'HtmlViewer.js';

//     // AL → JS call; must exist in htmlhost.js
//     procedure RenderHtml(html: Text);

//     // JS → AL event (optional, used here to know it's ready)
//     event OnControlReady();
// }

