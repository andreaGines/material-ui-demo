React = require('react')
DefaultPageView = require('./defaultPageView')
SpinnerTileView = require('./spinnerTileView')
SpinnerEditView = require('./spinnerEditView')
SpinnerNewView = require('./spinnerNewView')
Globals = require('./globals')
Resources = require('./resources')

Mui = require('material-ui')
{Tab, Tabs, FlatButton, AppBar, MenuItem, LeftNav, Snackbar} = require('material-ui')

List = require('material-ui/lib/lists/list')
ListItem = require('material-ui/lib/lists/list-item')
Colors = require('material-ui/lib/styles/colors')
NavigationClose = require('material-ui/lib/svg-icons/navigation/close')
MoreVertIcon = require('material-ui/lib/svg-icons/navigation/more-vert')
Avatar = require('material-ui/lib/avatar');
FileFolder = require('material-ui/lib/svg-icons/file/folder')


appView = React.createClass    
    #################################
    #       React Functions
    #################################
    componentDidMount: ->
        @props.model.on('change', @update)

    update: ->
        console.log "updating"
        @forceUpdate()

    render: ->
        <div className='app-div' id='awesome-441-app-div'>
            <Tabs valueLink="">
                <Tab label="Tab A" value="a" >
                    (Tab content...)
                </Tab>
                <Tab label="Tab B" value="b">
                    (Tab content...)
                </Tab>
            </Tabs>

        
            

        </div>

module.exports = React.createFactory(appView)
