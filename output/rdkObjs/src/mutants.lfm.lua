require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaMutantesMalfeitores2e()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("firecast.MutantsMasterminds2e");
    obj:setTitle("Mutantes e Malfeitores 2e");
    obj:setName("frmFichaMutantesMalfeitores2e");

    obj.libExports = GUI.fromHandle(_obj_newObject("form"));
    obj.libExports:setParent(obj);
    obj.libExports:setName("libExports");

    obj.fieldsLib = GUI.fromHandle(_obj_newObject("form"));
    obj.fieldsLib:setParent(obj.libExports);
    obj.fieldsLib:setName("fieldsLib");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setLeft(20);
    obj.tabControl1:setTop(0);
    obj.tabControl1:setWidth(800);
    obj.tabControl1:setHeight(600);
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Geral");
    obj.tab1:setName("tab1");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Talentos/Poderes");
    obj.tab2:setName("tab2");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Perícias");
    obj.tab3:setName("tab3");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Equipamentos");
    obj.tab4:setName("tab4");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Background");
    obj.tab5:setName("tab5");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Anotações");
    obj.tab6:setName("tab6");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.fieldsLib ~= nil then self.fieldsLib:destroy(); self.fieldsLib = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.libExports ~= nil then self.libExports:destroy(); self.libExports = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaMutantesMalfeitores2e()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaMutantesMalfeitores2e();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaMutantesMalfeitores2e = {
    newEditor = newfrmFichaMutantesMalfeitores2e, 
    new = newfrmFichaMutantesMalfeitores2e, 
    name = "frmFichaMutantesMalfeitores2e", 
    dataType = "firecast.MutantsMasterminds2e", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Mutantes e Malfeitores 2e", 
    description=""};

frmFichaMutantesMalfeitores2e = _frmFichaMutantesMalfeitores2e;
Firecast.registrarForm(_frmFichaMutantesMalfeitores2e);
Firecast.registrarDataType(_frmFichaMutantesMalfeitores2e);

return _frmFichaMutantesMalfeitores2e;
