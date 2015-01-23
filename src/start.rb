$__CURRENT__=File.dirname(__FILE__)
$__CURRENT__=$__CURRENT__.split /\//
$__REQUIRED__={}

def require(filename)
	return false if (filename.include? 'cocos2dx_api')

	if !(filename.end_with? '.rb')
		filename+='.rb'
	end

	bakup_arr=$__CURRENT__.clone

	require_arr=filename.split /\//
	require_arr.each do |line|
		next if line== '.'
		if line=='..'
			$__CURRENT__.pop
		else
			$__CURRENT__.push line
		end
	end

	target_file=$__CURRENT__.join '/'
	$__CURRENT__.pop

	if !($__REQUIRED__.has_key? target_file)
		eval_script(target_file)
		#puts "eval_script:"+target_file
		$__REQUIRED__[target_file]=true
		$__CURRENT__=bakup_arr
		return true
	else
		$__CURRENT__=bakup_arr
		return false
	end

end

require "cocos2dx_api"
require "somelib/deeper/test_clz"

testme=TestClass.new
testme.say

class Array
    def x
        self[0]
    end
    def y
        self[1]
    end
    def width
        self[0]
    end
    def height
        self[1]
    end
end


$director=CC::Director.getInstance


class HelloWorld <  CC::Layer

    def self.createScene
        scene = CC::Scene.create
        layer = HelloWorld.create
        scene.addChild(layer)
        scene
    end

    def self.create
        layer = HelloWorld.new
        layer.init
        layer
    end

    def init
        if ! super
            return false
        end
        
        visibleSize=$director.visibleSize
        origin=$director.visibleOrigin
        
        closeItem = CC::MenuItemImage.create("res/CloseNormal.png","res/CloseSelected.png")
        closeItem.position=[origin.x + visibleSize.width - closeItem.contentSize.width/2,
        origin.y + closeItem.contentSize.height/2]
        closeItem.onClicked=Proc.new{$director.endDirector}
        
        menu=CC::Menu.createWithItem(closeItem)
        menu.position=[0,0]
        addChild(menu,1)
        
        xrate=visibleSize.width/544.0
        yrate=visibleSize.height/416.0
        startPosition=[0,0]
        scale=1.0
        if xrate>yrate
            scale=yrate
            startPosition[0]=(visibleSize.width-544.0*scale)/2
            else
            scale=xrate
            startPosition[1]=(visibleSize.height-416.0*scale)/2
        end
        #puts "#{startPosition[0]},#{startPosition[1]},#{scale}"
        @rootNode=CC::Node.create
        @rootNode.anchorPoint=[0,0]
        @rootNode.position=startPosition
        @rootNode.scale=scale
        @rootNode.contentSize=[544,416]
        $screenRootNode=@rootNode
        addChild @rootNode

        @sprite=CC::Sprite.create("res/HelloWorld.png")
        @sprite.anchorPoint=[0.5,0.5]
        @sprite.position=[544/2,416/2]
        @rootNode.addChild(@sprite,0)

        @listener=CC::EventListenerTouchAllAtOnce.create
        @listener.onTouchesBegan=Proc.new{|event,*touches|
            puts "[began]"
            #puts event
            touches.each do |touch|
                puts touch.location
            end
        }
        @listener.onTouchesEnded=Proc.new{|event,*touches|
            puts "[ended]"
            #puts event
            puts touches.join(",")
        }
        eventDispatcher.addEventListenerWithSceneGraphPriority(@listener,self)

        true

        end
end

scene=HelloWorld.createScene

$director.runWithScene scene