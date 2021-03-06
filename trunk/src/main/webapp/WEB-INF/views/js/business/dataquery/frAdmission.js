require(['component/iframeLayer', 'component/dataTable', 'common/util',
      'common/http', 'handlebars', 'jquery', 'jquery.serialize', 'laydate',
      'jquery.validate', 'pagination'],
    function (layer, dataTable, util, http, handlebars) {
      var params = $("#frwybs").val();
      var table_xzxk, table_xzba, table_zzxx, table_ryxx;

      init();
      /**
       * 初始化函数集合
       */
      function init() {
        var errormsg =  $("#errormsg").val();
        if(errormsg != null && errormsg != ""){
          initSSFlex();
          layer.msg(errormsg);
        }else{
        	 _bind();
             init_admission();
        }
      }

      function init_admission() {
        if ((table_xzxk + '') == 'undefined') {
          initDataTable_xzxk();
        }
        ;
        if ((table_xzba + '') == 'undefined') {
          initDataTable_xzba();
        }
        ;
        if ((table_zzxx + '') == 'undefined') {
          initDataTable_zzxx();
        }
        ;
        if ((table_ryxx + '') == 'undefined') {
          initDataTable_ryxx();
        }
        ;

      }
      //展开与收缩
      function initAddflex(yrinfo_li) {
        $("#" + yrinfo_li).parent().next().hide();
        $("#" + yrinfo_li).attr("class", "flex-icon on")
      }
      //初始化异常全部收缩
      function initSSFlex(){
        	$("table").hide();
        }
      function initDataTable_xzxk() {
        table_xzxk = dataTable.load({
          el: '#table_xzxk',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/admission/xzxk',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,
            className:"center"
          }, {
            data: "xkzsbh",cut : {length : 20,repalce : '...'}
          }, {
            data: "xknr",cut : {length : 20,repalce : '...'}
          }, {
            data: "xkjg",cut : {length : 20,repalce : '...'}
          }, {
            data: "xkrq",cut : {length : 20,repalce : '...'}
          }, {
            data: "xkzt",cut : {length : 20,repalce : '...'}
          }, {
            data: "xkqs",cut : {length : 20,repalce : '...'}
          }, {
            data: "xkjz",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_xzxk.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_xzxk_wrapper .bottom').hide();
          } else {
            $('#table_xzxk_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_xzxk_icon");
          }
          if(json.recordsTotal>0) {
            $("#xzxk").text(json.recordsTotal);
            $("#xzxk").css("color", "red");
          }
        })
      }

      function initDataTable_xzba() {
        table_xzba = dataTable.load({
          el: '#table_xzba',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/admission/xzba',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,
            className:"center"
          }, {
            data: "bamc",cut : {length : 20,repalce : '...'}
          }, {
            data: "banr",cut : {length : 20,repalce : '...'}
          }, {
            data: "bajg",cut : {length : 20,repalce : '...'}
          }, {
            data: "barq",cut : {length : 20,repalce : '...'}
          },  {
            data: "baqs",cut : {length : 20,repalce : '...'}
          }, {
            data: "bajz",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_xzba.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_xzba_wrapper .bottom').hide();
          } else {
            $('#table_xzba_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_xzba_icon");
          }
          if(json.recordsTotal>0) {
            $("#xzba").text(json.recordsTotal);
            $("#xzba").css("color", "red");
          }
        })
      }

      function initDataTable_zzxx() {
        table_zzxx = dataTable.load({
          el: '#table_zzxx',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/admission/zzxx',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,
            className:"center"
          }, {
            data: "zzmc",cut : {length : 20,repalce : '...'}
          }, {
            data: "zzdj",cut : {length : 20,repalce : '...'}
          }, {
            data: "zzjg",cut : {length : 20,repalce : '...'}
          }, {
            data: "zzrq",cut : {length : 20,repalce : '...'}
          }, {
            data: "zzzt",cut : {length : 20,repalce : '...'}
          }, {
            data: "zzqs",cut : {length : 20,repalce : '...'}
          }, {
            data: "zzjz",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_zzxx.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_zzxx_wrapper .bottom').hide();
          } else {
            $('#table_zzxx_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_zzxx_icon");
          }
          if(json.recordsTotal>0) {
            $("#zzxx").text(json.recordsTotal);
            $("#zzxx").css("color", "red");
          }
        })
      }

      function initDataTable_ryxx() {
        table_ryxx = dataTable.load({
          el: '#table_ryxx',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/admission/ryxx',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,
            className:"center"
          }, {
            data: "rymc",cut : {length : 20,repalce : '...'}
          }, {
            data: "ryjldx",cut : {length : 20,repalce : '...'}
          }, {
            data: "ryrq",cut : {length : 20,repalce : '...'}
          }, {
            data: "ryqs",cut : {length : 20,repalce : '...'}
          }, {
            data: "ryjz",cut : {length : 20,repalce : '...'}
          }, {
            data: "ryjg",cut : {length : 20,repalce : '...'}
          }, {
            data: "rynd",cut : {length : 20,repalce : '...'}
          }, {
            data: "rynr",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_ryxx.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_ryxx_wrapper .bottom').hide();
          } else {
            $('#table_ryxx_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_ryxx_icon");
          }
          if(json.recordsTotal>0) {
            $("#ryxx").text(json.recordsTotal);
            $("#ryxx").css("color", "red");
          }
        })
      }

      /**
       * 事件绑定
       * @private
       */
      function _bind() {
        util.bindEvents([
          {
            el: '.flex-icon',
            event: 'click',
            handler: function () {
              // 隐藏table
              $(this).parent().next().hide();
              $(this).attr("class", "flex-icon on")
            }
          },
          {
            el: '.on',
            event: 'click',
            handler: function () {
              // 显示table
              $(this).parent().next().show();
              $(this).attr("class", "flex-icon");
            }
          }
        ])
      }
    });
