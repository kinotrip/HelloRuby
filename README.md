# HelloRuby
Ruby binding of cocos2d-x 3.3 Final

HelloRuby��cocos2d-x��Ruby���԰󶨡�Ŀǰ��֧�ֵ�ƽ̨��win32/iOS/android��

����cocos2d-x 3.3 Final�汾��luaģ�����ɵĳ�ʼ���̡�

���������src/start.rb����$director=CC::Director.getInstance��һ�п�ʼΪruby�汾��cocos2d-xĬ�ϳ�ʼ����ʵ�֡�

����win32�ϵ�ԭ��require������������bug������Ŀǰͨ��һ��ִ�нű���ȫ�ַ���eval_script(�ű�·��)ʵ�����Զ����require������

������IDE��дruby�����ʱ�򣬿���require�Զ����ɵ�cocos2dx_api.rb�ļ��Ի����ͷ�����ʾ֧�֡����Զ����require�����и����ƵĽű�ʵ�ʲ���ִ�С�

������

1. ��win32�������޸�src/screen_size.txt�ļ����Ե������Դ��ڵĴ�С��

2. �޸�
		frameworks\cocos2d-x\tools\toruby
		frameworks\cocos2d-x\tools\bindings-generator\targets\ruby
		frameworks\cocos2d-x\cocos\scripting\ruby-bindings
		�е�ʵ����֧�ָ���İ�������ת����Ŀǰ��ʵ����cocos2d-x/cocos2dx_audioengine�������ת����