module CC
	class Point
		attr_accessor :x
		attr_accessor :y
	end
	class Size
		attr_accessor :width
		attr_accessor :height
	end
	class Rect
		attr_accessor :x
		attr_accessor :y
		attr_accessor :width
		attr_accessor :height
	end

	class Layer < LayerVirtual
		def init
		end
	end

	class EventListenerTouchOneByOne < EventListener
		def setOnTouchBegan(callback)
		end
		def onTouchBegan=(callback)
		end
		def setOnTouchMoved(callback)
		end
		def onTouchMoved=(callback)
		end
		def setOnTouchEnded(callback)
		end
		def onTouchEnded=(callback)
		end
		def setOnTouchCancelled(callback)
		end
		def onTouchCancelled=(callback)
		end
	end

	class EventListenerTouchAllAtOnce < EventListener

		def setOnTouchesBegan(callback)
		end
		def onTouchesBegan=(callback)
		end
		def setOnTouchesMoved(callback)
		end
		def onTouchesMoved=(callback)
		end
		def setOnTouchesEnded(callback)
		end
		def onTouchesEnded=(callback)
		end
		def setOnTouchesCancelled(callback)
		end
		def onTouchesCancelled=(callback)
		end
	end

	class Menu < Layer
		def create
		return self.new
		end

		def createWithItem(menuitem)
		return self.new
		end
	end

	class MenuItemImage  < MenuItemSprite
		def create(normalImage,selectedImage=nil,disabledImage=nil)
		end
	end

	class Director < Ref
		def endDirector
		end
	end
end

def eval_script(filename)
end