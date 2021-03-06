//v.3.6 build 131108

/*
Copyright DHTMLX LTD. http://www.dhtmlx.com
To use this component please contact sales@dhtmlx.com to obtain license
*/
dhtmlXForm.prototype.items.editor = {
	
	editor: {},
	
	render: function(item, data) {
		
		var ta = (!isNaN(data.rows));
		
		item._type = "editor";
		item._enabled = true;
		
		this.doAddLabel(item, data);
		this.doAddInput(item, data, "DIV", null, true, true, "dhxform_item_template dhxeditor_inside");
		
		item._value = (data.value||"");
		
		var that = this;
		this.editor[item._idd] = new dhtmlXEditor(item.childNodes[item._ll?1:0].childNodes[0]);
		this.editor[item._idd].setContent(item._value);
		this.editor[item._idd].attachEvent("onAccess",function(t, ev){
			// generate body click to hide menu/toolbar/calendar/combo/other stuff if any
			_dhxForm_doClick(document.body, "click");
			// continue
			if (t == "blur") {
				that.doOnBlur(item, this);
				item.callEvent("onBlur", [item._idd]);
				if (item.getForm().skin == "dhx_terrace") item.childNodes[item._ll?1:0].childNodes[0].className = "dhxform_item_template dhxeditor_inside";
			} else {
				item.callEvent("onEditorAccess", [item._idd, t, ev, this, item.getForm()]);
				item.callEvent("onFocus", [item._idd]);
				if (item.getForm().skin == "dhx_terrace") item.childNodes[item._ll?1:0].childNodes[0].className = "dhxform_item_template dhxeditor_inside_focus";
			}
		});
		
		this.editor[item._idd].attachEvent("onToolbarClick", function(a){
			item.callEvent("onEditorToolbarClick", [item._idd, a, this, item.getForm()]);
		});
		
		if (data.readonly) this.setReadonly(item, true);
		
		// emulate label-for
		item.childNodes[item._ll?0:1].childNodes[0].removeAttribute("for");
		item.childNodes[item._ll?0:1].childNodes[0].onclick = function() {
			that.editor[item._idd]._focus();
		}
		
		if (!this.editor[item._idd]._isToolbar) {
			this.editor[item._idd].base.firstChild.onmousedown = function(){return false;}
		}
		
		return this;
		
	},
	
	// destructor for editor needed
	doOnBlur: function(item, editor) {
		var t = editor.getContent();
		if (item._value != t) {
			if (item.checkEvent("onBeforeChange")) {
				if (item.callEvent("onBeforeChange",[item._idd, item._value, t]) !== true) {
					// restore
					editor.setContent(item._value);
					return;
				}
			}
			// accepted
			item._value = t;
			item.callEvent("onChange",[item._idd, t]);
		}
	},
	
	setValue: function(item, value) {
		if (item._value == value) return;
		item._value = value;
		this.editor[item._idd].setContent(item._value);
	},
	
	getValue: function(item) {
		item._value = this.editor[item._idd].getContent();
		return item._value;
	},
	
	enable: function(item) {
		this.editor[item._idd].setReadonly(false);
		this.doEn(item);
	},
	
	disable: function(item) {
		this.editor[item._idd].setReadonly(true);
		this.doDis(item);
	},
	
	setReadonly: function(item, mode) {
		this.editor[item._idd].setReadonly(mode);
	},
	
	getEditor: function(item) {
		return (this.editor[item._idd]||null);
	},
	
	destruct: function(item) {
		
		// custom editor functionality
		item.childNodes[item._ll?0:1].childNodes[0].onclick = null;
		
		// unload editor
		this.editor[item._idd].unload();
		this.editor[item._idd] = null;
		
		// unload item
		this.d2(item);
		item = null;
		
	},
	
	setFocus: function(item) {
		this.editor[item._idd]._focus();
	}
	
};

(function(){
	for (var a in {doAddLabel:1,doAddInput:1,doUnloadNestedLists:1,setText:1,getText:1,setWidth:1,isEnabled:1})
		dhtmlXForm.prototype.items.editor[a] = dhtmlXForm.prototype.items.template[a];
})();

dhtmlXForm.prototype.items.editor.d2 = dhtmlXForm.prototype.items.select.destruct;
dhtmlXForm.prototype.items.editor.doEn = dhtmlXForm.prototype.items.select.enable;
dhtmlXForm.prototype.items.editor.doDis = dhtmlXForm.prototype.items.select.disable;

dhtmlXForm.prototype.getEditor = function(name) {
	return this.doWithItem(name, "getEditor");
};

