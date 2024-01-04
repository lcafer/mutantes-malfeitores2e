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

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.tab1);
    obj.layout1:setLeft(20);
    obj.layout1:setTop(20);
    obj.layout1:setHeight(25);
    obj.layout1:setWidth(250);
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("left");
    obj.label1:setText("Força:");
    obj.label1:setWidth(90);
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setRight(2);
    obj.edit1:setAlign("client");
    obj.edit1:setField("atributoForca");
    obj.edit1:setName("edit1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setAlign("right");
    obj.label2:setWidth(30);
    obj.label2:setField("modificadorForca");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.tab1);
    obj.layout2:setLeft(20);
    obj.layout2:setTop(50);
    obj.layout2:setHeight(25);
    obj.layout2:setWidth(250);
    obj.layout2:setName("layout2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setAlign("left");
    obj.label3:setText("Destreza:");
    obj.label3:setWidth(90);
    obj.label3:setName("label3");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setRight(2);
    obj.edit2:setAlign("client");
    obj.edit2:setField("atributoDestreza");
    obj.edit2:setName("edit2");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setAlign("right");
    obj.label4:setWidth(30);
    obj.label4:setField("modificadorDestreza");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setName("label4");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.tab1);
    obj.layout3:setLeft(20);
    obj.layout3:setTop(80);
    obj.layout3:setHeight(25);
    obj.layout3:setWidth(250);
    obj.layout3:setName("layout3");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setAlign("left");
    obj.label5:setText("Constituição:");
    obj.label5:setWidth(90);
    obj.label5:setName("label5");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setRight(2);
    obj.edit3:setAlign("client");
    obj.edit3:setField("atributoConstituicao");
    obj.edit3:setName("edit3");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout3);
    obj.label6:setAlign("right");
    obj.label6:setWidth(30);
    obj.label6:setField("modificadorConstituicao");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.tab1);
    obj.layout4:setLeft(20);
    obj.layout4:setTop(110);
    obj.layout4:setHeight(25);
    obj.layout4:setWidth(250);
    obj.layout4:setName("layout4");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout4);
    obj.label7:setAlign("left");
    obj.label7:setText("Inteligência:");
    obj.label7:setWidth(90);
    obj.label7:setName("label7");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setRight(2);
    obj.edit4:setAlign("client");
    obj.edit4:setField("atributoInteligencia");
    obj.edit4:setName("edit4");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout4);
    obj.label8:setAlign("right");
    obj.label8:setWidth(30);
    obj.label8:setField("modificadorInteligencia");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.tab1);
    obj.layout5:setLeft(20);
    obj.layout5:setTop(140);
    obj.layout5:setHeight(25);
    obj.layout5:setWidth(250);
    obj.layout5:setName("layout5");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout5);
    obj.label9:setAlign("left");
    obj.label9:setText("Sabedoria:");
    obj.label9:setWidth(90);
    obj.label9:setName("label9");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setRight(2);
    obj.edit5:setAlign("client");
    obj.edit5:setField("atributoSabedoria");
    obj.edit5:setName("edit5");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout5);
    obj.label10:setAlign("right");
    obj.label10:setWidth(30);
    obj.label10:setField("modificadorSabedoria");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.tab1);
    obj.layout6:setLeft(20);
    obj.layout6:setTop(170);
    obj.layout6:setHeight(25);
    obj.layout6:setWidth(250);
    obj.layout6:setName("layout6");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout6);
    obj.label11:setAlign("left");
    obj.label11:setText("Carisma:");
    obj.label11:setWidth(90);
    obj.label11:setName("label11");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setRight(2);
    obj.edit6:setAlign("client");
    obj.edit6:setField("atributoCarisma");
    obj.edit6:setName("edit6");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout6);
    obj.label12:setAlign("right");
    obj.label12:setWidth(30);
    obj.label12:setField("modificadorCarisma");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setName("label12");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.tab1);
    obj.dataLink1:setField("atributoForca");
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.tab1);
    obj.dataLink2:setField("atributoDestreza");
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.tab1);
    obj.dataLink3:setField("atributoConstituicao");
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.tab1);
    obj.dataLink4:setField("atributoInteligencia");
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.tab1);
    obj.dataLink5:setField("atributoSabedoria");
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.tab1);
    obj.dataLink6:setField("atributoCarisma");
    obj.dataLink6:setName("dataLink6");

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

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valorForca = tonumber(sheet.atributoForca);                      
            
                                    if (valorForca ~= nil) then
                                            sheet.modificadorForca = math.floor(valorForca / 2) - 5; 
            
                                            if sheet.modificadorForca > 0 then
                                                    sheet.modificadorForca = "+" .. sheet.modificadorForca;
                                            end;
                                    else
                                            sheet.modificadorForca = nil;
                                    end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valorDestreza = tonumber(sheet.atributoDestreza);                      
            
                                    if (valorDestreza ~= nil) then
                                            sheet.modificadorDestreza = math.floor(valorDestreza / 2) - 5; 
            
                                            if sheet.modificadorDestreza > 0 then
                                                    sheet.modificadorDestreza = "+" .. sheet.modificadorDestreza;
                                            end;
                                    else
                                            sheet.modificadorDestreza = nil;
                                    end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valorConstituicao = tonumber(sheet.atributoConstituicao);                      
            
                                    if (valorConstituicao ~= nil) then
                                            sheet.modificadorConstituicao = math.floor(valorConstituicao / 2) - 5; 
            
                                            if sheet.modificadorConstituicao > 0 then
                                                    sheet.modificadorConstituicao = "+" .. sheet.modificadorConstituicao;
                                            end;
                                    else
                                            sheet.modificadorConstituicao = nil;
                                    end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valorInteligencia = tonumber(sheet.atributoInteligencia);                      
            
                                    if (valorInteligencia ~= nil) then
                                            sheet.modificadorInteligencia = math.floor(valorInteligencia / 2) - 5; 
            
                                            if sheet.modificadorInteligencia > 0 then
                                                    sheet.modificadorInteligencia = "+" .. sheet.modificadorInteligencia;
                                            end;
                                    else
                                            sheet.modificadorInteligencia = nil;
                                    end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valorSabedoria = tonumber(sheet.atributoSabedoria);                      
            
                                    if (valorSabedoria ~= nil) then
                                            sheet.modificadorSabedoria = math.floor(valorSabedoria / 2) - 5; 
            
                                            if sheet.modificadorSabedoria > 0 then
                                                    sheet.modificadorSabedoria = "+" .. sheet.modificadorSabedoria;
                                            end;
                                    else
                                            sheet.modificadorSabedoria = nil;
                                    end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local valorCarisma = tonumber(sheet.atributoCarisma);                      
            
                                    if (valorCarisma ~= nil) then
                                            sheet.modificadorCarisma = math.floor(valorCarisma / 2) - 5; 
            
                                            if sheet.modificadorCarisma > 0 then
                                                    sheet.modificadorCarisma = "+" .. sheet.modificadorCarisma;
                                            end;
                                    else
                                            sheet.modificadorCarisma = nil;
                                    end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.libExports ~= nil then self.libExports:destroy(); self.libExports = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
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
