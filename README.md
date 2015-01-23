# HelloRuby

HelloRuby是cocos2d-x的Ruby语言绑定。目前可支持的平台有win32/iOS/android。

基于cocos2d-x 3.3 Final版本中lua模板生成的初始工程。

入口和说明
----------------

   * 代码入口是src/start.rb，自$director=CC::Director.getInstance这一行开始为ruby版本的cocos2d-x默认初始界面实现。

   * 由于win32上的原生require方法存在跳出bug，所以目前通过一个执行脚本的全局方法eval_script(脚本路径)实现了自定义的require方法。

   * 在IDE内写ruby代码的时候，可以require自动生成的cocos2dx_api.rb文件以获得类和方法提示支持。在自定义的require方法中该名称的脚本实际不会执行。

其他
----------------
   * 在win32环境下修改src/screen_size.txt文件可以调整测试窗口的大小。

   * 修改
     * frameworks\cocos2d-x\tools\toruby
     * frameworks\cocos2d-x\tools\bindings-generator\targets\ruby
     * frameworks\cocos2d-x\cocos\scripting\ruby-bindings
		其中的定义以支持更多的包和类型转换。目前仅实现了cocos2d-x/cocos2dx_audioengine两个块的转换。
		
   * win32工程使用VS2012编译。