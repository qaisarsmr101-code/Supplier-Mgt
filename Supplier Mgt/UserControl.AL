controladdin HTMLviewer
{
    StartupScript = 'startup.js';
    Scripts = 'script.js';
    VerticalStretch = true;
    RequestedHeight = 400;
    event ControlReady();
    procedure Render(HTML: Text);
    //procedure Render(HTML: )
}
