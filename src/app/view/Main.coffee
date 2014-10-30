Ext.define "touchApp.view.Main",
  extend: "Ext.tab.Panel"
  xtype: "main"
  requires: [
        "Ext.TitleBar"
        "touchApp.view.Gamewidget"
    ]

  views:[
      "gamewidget"
  ]

  config:
    tabBarPosition: "bottom"
    items: [
        title: "Welcome"
        iconCls: "home"
        styleHtmlContent: true
        scrollable: true
        items:[
            xtype: "gamewidget"
        ]
    ]
