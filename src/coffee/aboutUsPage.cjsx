React = require('react')
Resources = require('./resources')

Mui = require('material-ui')
{Tab, Tabs, FlatButton, AppBar, MenuItem, FontIcon, LeftNav, Snackbar, Styles, Paper, Card, CardHeader, CardMedia, CardTitle, CardActions, CardText} = require('material-ui')
SwipeableViews = require('react-swipeable-views')


assert = (condition, message) ->
    if (!condition)
        throw message || "Assertion failed";

assert(Card)
assert(CardHeader)
assert(CardMedia)
assert(CardTitle)
assert(CardActions)
assert(CardText)

styles = require('material-ui/lib/styles')
List = require('material-ui/lib/lists/list')
ListItem = require('material-ui/lib/lists/list-item')
Colors = require('material-ui/lib/styles/colors')
NavigationClose = require('material-ui/lib/svg-icons/navigation/close')
MoreVertIcon = require('material-ui/lib/svg-icons/navigation/more-vert')
Avatar = require('material-ui/lib/avatar');
FileFolder = require('material-ui/lib/svg-icons/file/folder')



aboutUsPage = React.createClass    
    #################################
    #       React Functions
    #################################
    getInitialState: ->
        {
        }

    componentDidMount: ->
        @props.model.on('change', @update)

    update: ->
        console.log "updating"
        @forceUpdate()

    render: ->
        <div className='app-div' id='awesome-441-app-div'>
          <div className='spacer'></div>
          <Card>
            <CardHeader
              title="The Team!"
              subtitle="The top-notch developers behind the project"
              avatar={<Avatar>AT</Avatar>}/>
            <CardHeader
              title="Andrea Gines"
              subtitle="BS Computer Science and Econ"
              avatar="andrea_professional.jpg"/>
            <CardMedia overlay={<CardTitle title="Puerto Rico" subtitle="Andrea's place of origin."/>}>
              <div className='cutoff-frame'>
                <img src="http://www.carnival.com/~/media/Images/PreSales/Excursions/Ports_R-V/SJU/427033/Pictures/fortresses-of-old-san-juan-san-juan-puerto-rico-1.ashx"/>
              </div>
            </CardMedia>
            <CardTitle title="About Andrea!" subtitle="Developer"/>
            <CardActions>
              <FlatButton linkButton={true} label="Github" href='https://github.com/andreaGines' />
              <FlatButton linkButton={true} label="LinkedIn" href='https://www.linkedin.com/in/andreagines'/>
            </CardActions>
            <CardText>
              A University of Michigan 2015 graduate with big plans ahead! Accomplishments include crushing EECS 381, EECS 482,
              and now producing beautiful and user friendly apps in EECS 493!
            </CardText>
          </Card>
          <div className='spacer'></div>
          <Card>
            <CardHeader
              title="Tyler Markvluwer"
              subtitle="BSE Computer Science and Engineering"
              avatar="https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAIBAAAAJGU5MWI1YmJlLWQyMjItNGQzNC1hN2E1LTM4MTY3NTBlNmUwYg.jpg"/>
            <CardMedia overlay={<CardTitle title="Holland, MI" subtitle="Tyler's place of origin."/>}>
              <div className='cutoff-frame'>
                <img src="http://www.vitopalmisano.com/data/photos/426_1big_red_pan_duskpsd_final.jpg"/>
              </div>
            </CardMedia>
            <CardTitle title="About Tyler!" subtitle="Developer"/>
            <CardActions>
              <FlatButton linkButton={true} label="Github" href='https://github.com/tyler-markvluwer' />
              <FlatButton linkButton={true} label="LinkedIn" href='https://www.linkedin.com/pub/tyler-markvluwer/40/5b2/5b'/>
            </CardActions>
            <CardText>
              A University of Michigan 2015 graduate with big plans ahead! Accomplishments include crushing EECS 381, and completing
              multiple mobile apps and side projects.
            </CardText>
          </Card>
          <div className='spacer'></div>
        </div>

module.exports = React.createFactory(aboutUsPage)
