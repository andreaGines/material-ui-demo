# needed for material ui
injectTapEventPlugin = require("react-tap-event-plugin")
injectTapEventPlugin();

Render = require('react-dom').render
TestApp441 = require('./appView') # notice the './' prefix above for a local file

Render(
	TestApp441 # which component to mount
        nullProp: null
    document.getElementById('app-view-mount') # where to mount it
)