React = require('react')

{Tab, Tabs, FlatButton, AppBar, MenuItem, FontIcon, LeftNav, Snackbar, Styles, Paper, Card, CardHeader, CardMedia, CardTitle, CardActions, CardText} = require('material-ui')

styles = require('material-ui/lib/styles')
Colors = require('material-ui/lib/styles/colors')
Avatar = require('material-ui/lib/avatar');

HowToImage = React.createClass    
    #################################
    #       React Functions
    #################################

    render: ->
      <Card>
        <CardHeader
          title={@props.headerTitle}
          subtitle={@props.headerSubTitle}
          avatar={<Avatar>{@props.headerChar}</Avatar>}/>
        <CardMedia overlay={<CardTitle title={@props.title} subtitle={@props.subtitle}/>}>
          <div className='scale-frame'>
            <img src={@props.imgUrl} style={width: '100%'}/>
          </div>
        </CardMedia>
      </Card>

module.exports = React.createFactory(HowToImage)
