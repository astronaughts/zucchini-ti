var tab1, tab2, tab_group;

tab1 = require('tab1');

tab2 = require('tab2');

Ti.UI.setBackgroundColor('#000');

tab_group = Ti.UI.createTabGroup();

tab_group.addTab(tab1);

tab_group.addTab(tab2);

tab_group.open();
