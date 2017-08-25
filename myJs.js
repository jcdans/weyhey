var message = {

  init: function(){
    this.cacheDom();
    this.bindEvents();
    this.$el.hide();
    this.render();
  },
  cacheDom: function(){
    this.$el = $(".message");
    this.$main = $(".wrapper-div");
    this.$btn = this.$main.find('button.showmsg');
  },
  bindEvents: function(){
    this.$btn.on('click',this.showMessage.bind(this));
  },
  render: function(){
    this.$el.html("Hello World!");
  },

  showMessage:function(){
    this.$el.slideToggle("slow",function(){});
  }

};
