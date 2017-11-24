require(['component/iframeLayer', 'component/dataTable', 'common/util',
      'common/http', 'handlebars', 'jquery', 'jquery.serialize', 'laydate',
      'jquery.validate', 'pagination'],
    function (layer, dataTable, util, http, handlebars) {
      var params = $("#frwybs").val();
      var table_gsswjf, table_dsswjf, table_fzch, table_sbgjj, table_cdhb,
          table_ydjf,
          table_wxd;

      init();
      /**
       * 初始化函数集合
       */
      function init() {
        var errormsg = $("#errormsg").val();
        if (errormsg != null && errormsg != "") {
          initSSFlex();
          layer.msg(errormsg);
        } else {
          _bind();
          init_tax();
        }
      }

      function init_tax() {
        if ((table_gsswjf + '') == 'undefined') {
          initDataTable_gsswjf();
        }
        ;
        if ((table_dsswjf + '') == 'undefined') {
          initDataTable_dsswjf();
        }
        ;
        if ((table_fzch + '') == 'undefined') {
          initDataTable_fzch();
        }
        ;
        if ((table_sbgjj + '') == 'undefined') {
          initDataTable_sbgjj();
        }
        ;
        if ((table_cdhb + '') == 'undefined') {
          initDataTable_cdhb();
        }
        ;
        if ((table_ydjf + '') == 'undefined') {
          initDataTable_ydjf();
        }
        ;
        if ((table_wxd + '') == 'undefined') {
          initDataTable_wxd();
        }
        ;

      }

      //展开与收缩
      function initAddflex(yrinfo_li) {
        $("#" + yrinfo_li).parent().next().hide();
        $("#" + yrinfo_li).attr("class", "flex-icon on")
      }

      //初始化异常全部收缩
      function initSSFlex() {
        $("table").hide();
      }

      function initDataTable_gsswjf() {
        table_gsswjf = dataTable.load({
          el: '#table_gsswjf',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/tax/gsswjf',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,
            width: 20
          }, {
            data: "sssq",cut : {length : 20,repalce : '...'}
          }, {
            data: "gnzzs", cut: {length: 20, repalce: '...'}
          }, {
            data: "gnxfs", cut: {length: 20, repalce: '...'}
          }, {
            data: "qysds", cut: {length: 20, repalce: '...'}
          }],
          columnDefs: []
        });
        table_gsswjf.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_gsswjf_wrapper .bottom').hide();
          } else {
            $('#table_gsswjf_wrapper .bottom').show();
          }
          if (json.recordsTotal <= 0) {
            initAddflex("table_gsswjf_icon");
          } else {
            $("#gsswjf").text(json.recordsTotal);
            $("#gsswjf").css("color", "red");
          }
        })
      }

      function initDataTable_dsswjf() {
        table_dsswjf = dataTable.load({
          el: '#table_dsswjf',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/tax/dsswjf',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,
            width: 20
          }, {
            data: "skssqs",cut : {length : 20,repalce : '...'}
          }, {
            data: "skssqz",cut : {length : 20,repalce : '...'}
          }, {
            data: "dsskzl", cut: {length: 20, repalce: '...'}
          }, {
            data: "dssje",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_dsswjf.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_dsswjf_wrapper .bottom').hide();
          } else {
            $('#table_dsswjf_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_dsswjf_icon");
          }else {
            $("#dsswjf").text(json.recordsTotal);
            $("#dsswjf").css("color", "red");
          }
        })
      }

      function initDataTable_fzch() {
        table_fzch = dataTable.load({
          el: '#table_fzch',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/tax/fzch',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,

          }, {
            data: "gsdjrq",cut : {length : 20,repalce : '...'}
          }, {
            data: "gsfzch",cut : {length : 20,repalce : '...'}
          }, {
            data: "dsdjrq",cut : {length : 20,repalce : '...'}
          }, {
            data: "dsfzch",cut : {length : 20,repalce : '...'}
          },],
          columnDefs: []
        });
        table_fzch.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_fzch_wrapper .bottom').hide();
          } else {
            $('#table_fzch_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_fzch_icon");
          }else {
            $("#fzch").text(json.recordsTotal);
            $("#fzch").css("color", "red");
          }
        })
      }

      function initDataTable_sbgjj() {
        table_sbgjj = dataTable.load({
          el: '#table_sbgjj',
          showIndex: false,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/tax/sbgjj',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,

          }, {
            data: "yl_count",cut : {length : 20,repalce : '...'}
          }, {
            data: "yb_count",cut : {length : 20,repalce : '...'}
          }, {
            data: "syu_count",cut : {length : 20,repalce : '...'}
          }, {
            data: "gs_count",cut : {length : 20,repalce : '...'}
          }, {
            data: "sye_count",cut : {length : 20,repalce : '...'}
          }, {
            data: "gjj_count",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_sbgjj.on('init.dt', function (e, settings, json) {
          if (json.data[0].yl_count == 0 && json.data[0].yb_count == 0
              && json.data[0].syu_count == 0 && json.data[0].gs_count == 0
              && json.data[0].sye_count == 0 && json.data[0].gjj_count == 0) {
            initAddflex("table_sbgjj_icon");
            $('#table_sbgjj_wrapper .bottom').hide();
          } else {
            if (json.recordsTotal <= 5) {
              $('#table_sbgjj_wrapper .bottom').hide();
            } else {
              $('#table_sbgjj_wrapper .bottom').show();
            }
            if(json.recordsTotal>0) {
              $("#sbgjj").text(json.recordsTotal);
              $("#sbgjj").css("color", "red");
            }
          }

        })
      }

      function initDataTable_cdhb() {
        table_cdhb = dataTable.load({
          el: '#table_cdhb',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/tax/cdhb',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,

          }, {
            data: "tbdh",cut : {length : 20,repalce : '...'}
          }, {
            data: "hbcm",cut : {length : 20,repalce : '...'}
          }, {
            data: "bxqq",cut : {length : 20,repalce : '...'}
          }, {
            data: "bxzq",cut : {length : 20,repalce : '...'}
          }, {
            data: "bbr",cut : {length : 20,repalce : '...'}
          }, {
            data: "syr",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_cdhb.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_cdhb_wrapper .bottom').hide();
          } else {
            $('#table_cdhb_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_cdhb_icon");
          }else {
            $("#cdhb").text(json.recordsTotal);
            $("#cdhb").css("color", "red");
          }
        })
      }

      function initDataTable_ydjf() {
        table_ydjf = dataTable.load({
          el: '#table_ydjf',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/tax/ydjf',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,

          }, {
            data: "ydl",cut : {length : 20,repalce : '...'}
          }, {
            data: "ydje",cut : {length : 20,repalce : '...'}
          }, {
            data: "jfrq",cut : {length : 20,repalce : '...'}
          }, {
            data: "jfje",cut : {length : 20,repalce : '...'}
          }, {
            data: "qdl",cut : {length : 20,repalce : '...'}
          }, {
            data: "dfqfsd",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_ydjf.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_ydjf_wrapper .bottom').hide();
          } else {
            $('#table_ydjf_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_ydjf_icon");
          }else {
            $("#ydjf").text(json.recordsTotal);
            $("#ydjf").css("color", "red");
          }
        })
      }

      function initDataTable_wxd() {
        table_wxd = dataTable.load({
          el: '#table_wxd',
          showIndex: true,
          scrollX: true,
          lengthMenu: [5, 10, 20, 50],
          ajax: {
            url: '/data/tax/wxd',
            data: function (d) {
              d.params = {"frwybs": params}
            }
          },
          columns: [{
            data: null,
            defaultContent: 1,

          }, {
            data: "jfnd",cut : {length : 20,repalce : '...'}
          }, {
            data: "yjfy",cut : {length : 20,repalce : '...'}
          }, {
            data: "yijfy",cut : {length : 20,repalce : '...'}
          }],
          columnDefs: []
        });
        table_wxd.on('init.dt', function (e, settings, json) {
          if (json.recordsTotal <= 5) {
            $('#table_wxd_wrapper .bottom').hide();
          } else {
            $('#table_wxd_wrapper .bottom').show();
          }
          if (json.recordsTotal == 0) {
            initAddflex("table_wxd_icon");
          }else {
            $("#wxd").text(json.recordsTotal);
            $("#wxd").css("color", "red");
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
