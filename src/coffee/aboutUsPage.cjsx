React = require('react')

{Tab, Tabs, FlatButton, AppBar, MenuItem, FontIcon, LeftNav, Snackbar, Styles, Paper, Card, CardHeader, CardMedia, CardTitle, CardActions, CardText} = require('material-ui')

styles = require('material-ui/lib/styles')
Colors = require('material-ui/lib/styles/colors')
Avatar = require('material-ui/lib/avatar');

aboutUsPage = React.createClass    
    #################################
    #       React Functions
    #################################

    render: ->
        <div className='app-div' id='awesome-441-app-div'>
          <div className='spacer'></div>
          <Card>
            <CardHeader
              title="The Team! The Team! The Team!"
              subtitle="The top-notch developers behind the project"
              avatar={<Avatar>AT</Avatar>}/>
            <div className='spacer'></div>
            <CardHeader
              title="Andrea Gines"
              subtitle="BS Computer Science and Economics"
              avatar="andrea_professional.jpg"/>
            <CardMedia overlay={<CardTitle title="San Juan, Puerto Rico" subtitle="Andrea's place of origin."/>}>
              <div className='cutoff-frame'>
                <img src="http://www.carnival.com/~/media/Images/PreSales/Excursions/Ports_R-V/SJU/427033/Pictures/fortresses-of-old-san-juan-san-juan-puerto-rico-1.ashx"/>
              </div>
            </CardMedia>
            <CardTitle title="About Andrea!" subtitle="Developer"/>
            <CardText>
              A University of Michigan 2015 graduate with big plans ahead! Accomplishments include crushing EECS 381, EECS 482,
              and now producing beautiful and user friendly apps in EECS 493!
            </CardText>
            <CardActions>
              <FlatButton linkButton={true} label="Github" href='https://github.com/andreaGines' />
              <FlatButton linkButton={true} label="LinkedIn" href='https://www.linkedin.com/in/andreagines'/>
            </CardActions>
          </Card>
          <div className='spacer'></div>
          <Card>
            <CardHeader
              title="Tyler Markvluwer"
              subtitle="BSE Computer Science and Engineering"
              avatar="tyler_fun.jpg"/>
            <CardMedia overlay={<CardTitle title="Holland, MI" subtitle="Tyler's place of origin."/>}>
              <div className='cutoff-frame'>
                <img src="big-red.jpg"/>
              </div>
            </CardMedia>
            <CardTitle title="About Tyler!" subtitle="Developer"/>
            <CardText>
              A University of Michigan 2015 graduate with big plans ahead! Accomplishments include crushing EECS 381, and completing
              multiple mobile apps and side projects.
            </CardText>
            <CardActions>
              <FlatButton linkButton={true} label="Github" href='https://github.com/tyler-markvluwer' />
              <FlatButton linkButton={true} label="LinkedIn" href='https://www.linkedin.com/pub/tyler-markvluwer/40/5b2/5b'/>
            </CardActions>
          </Card>
          <div className='spacer'></div>
        </div>

module.exports = React.createFactory(aboutUsPage)
