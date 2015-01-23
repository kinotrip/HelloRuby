module CC
	class Action  < Ref





			def startWithTarget(node_target)
			
			end





			def setOriginalTarget(node_originalTarget)
			
			end

				def originalTarget=(node_originalTarget)
				end




			def clone()
			return Action.new
			end





			def getOriginalTarget()
			return Node.new
			end

			def originalTarget()
			return Node.new
			end




			def stop()
			
			end





			def update(float_time)
			
			end





			def getTarget()
			return Node.new
			end

			def target()
			return Node.new
			end




			def step(float_dt)
			
			end





			def setTag(int_tag)
			
			end

				def tag=(int_tag)
				end




			def getTag()
			
			end

			def tag()
			
			end




			def setTarget(node_target)
			
			end

				def target=(node_target)
				end




			def isDone()
			
			end





			def reverse()
			return Action.new
			end

	end
end
module CC
	class ActionCamera  < ActionInterval

    
		
			def setEye(float_x, float_y=nil, float_z=nil)
			
			end			
    
		
			#def setEye(vec3_x)
			#
			#end			





			def getEye()
			
			end

			def eye()
			
			end




			def setUp(vec3_up)
			
			end

				def up=(vec3_up)
				end




			def getCenter()
			
			end

			def center()
			
			end




			def setCenter(vec3_center)
			
			end

				def center=(vec3_center)
				end




			def getUp()
			
			end

			def up()
			
			end




			def startWithTarget(node_target)
			
			end





			def clone()
			return ActionCamera.new
			end





			def reverse()
			return ActionCamera.new
			end





			def ActionCamera()
			
			end

	end
end
module CC
	class ActionEase  < ActionInterval





			def getInnerAction()
			return ActionInterval.new
			end

			def innerAction()
			return ActionInterval.new
			end




			def startWithTarget(node_target)
			
			end





			def clone()
			return ActionEase.new
			end





			def stop()
			
			end





			def reverse()
			return ActionEase.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ActionInstant  < FiniteTimeAction





			def step(float_dt)
			
			end





			def clone()
			return ActionInstant.new
			end





			def reverse()
			return ActionInstant.new
			end





			def isDone()
			
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ActionInterval  < FiniteTimeAction





			def getAmplitudeRate()
			
			end

			def amplitudeRate()
			
			end




			def setAmplitudeRate(float_amp)
			
			end

				def amplitudeRate=(float_amp)
				end




			def getElapsed()
			
			end

			def elapsed()
			
			end




			def startWithTarget(node_target)
			
			end





			def step(float_dt)
			
			end





			def clone()
			return ActionInterval.new
			end





			def reverse()
			return ActionInterval.new
			end





			def isDone()
			
			end

	end
end
module CC
	class ActionManager  < Ref





			def getActionByTag(int_tag,node_target)
			return Action.new
			end

			def actionByTag(int_tag,node_target)
			return Action.new
			end




			def removeActionByTag(int_tag,node_target)
			
			end





			def removeAllActions()
			
			end





			def addAction(action_action,node_target,bool_paused)
			
			end





			def resumeTarget(node_target)
			
			end





			def update(float_dt)
			
			end





			def pauseTarget(node_target)
			
			end





			def getNumberOfRunningActionsInTarget(node_target)
			
			end

			def numberOfRunningActionsInTarget(node_target)
			
			end




			def removeAllActionsFromTarget(node_target)
			
			end





			def resumeTargets(array_targetsToResume)
			
			end





			def removeAction(action_action)
			
			end





			def removeAllActionsByTag(int_tag,node_target)
			
			end





			def pauseAllRunningActions()
			
			end





			def ActionManager()
			
			end

	end
end
module CC
	class ActionTween  < ActionInterval





			def self.create(float_duration,str_key,float_from,float_to)
			return ActionTween.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return ActionTween.new
			end





			def update(float_dt)
			
			end





			def reverse()
			return ActionTween.new
			end

	end
end
module CC
	class AmbientLight  < BaseLight





			def self.create(color3b_color)
			return AmbientLight.new
			end





			def getLightType()
			
			end

			def lightType()
			
			end
	end
end
module CC
	class Animate  < ActionInterval

    
		
			#def getAnimation()
			#
			#end			
    
		
			#def getAnimation()
			#return Animation.new
			#end			





			def setAnimation(animation_animation)
			
			end

				def animation=(animation_animation)
				end




			def self.create(animation_animation)
			return Animate.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return Animate.new
			end





			def stop()
			
			end





			def reverse()
			return Animate.new
			end





			def update(float_t)
			
			end

	end
end
module CC
	class Animation  < Ref





			def getLoops()
			
			end

			def loops()
			
			end




			def addSpriteFrame(spriteframe_frame)
			
			end





			def setRestoreOriginalFrame(bool_restoreOriginalFrame)
			
			end

				def restoreOriginalFrame=(bool_restoreOriginalFrame)
				end




			def clone()
			return Animation.new
			end





			def getDuration()
			
			end

			def duration()
			
			end




			def setFrames(array_frames)
			
			end

				def frames=(array_frames)
				end




			def getFrames()
			
			end

			def frames()
			
			end




			def setLoops(int_loops)
			
			end

				def loops=(int_loops)
				end




			def setDelayPerUnit(float_delayPerUnit)
			
			end

				def delayPerUnit=(float_delayPerUnit)
				end




			def addSpriteFrameWithFile(str_filename)
			
			end





			def getTotalDelayUnits()
			
			end

			def totalDelayUnits()
			
			end




			def getDelayPerUnit()
			
			end

			def delayPerUnit()
			
			end




			def getRestoreOriginalFrame()
			
			end

			def restoreOriginalFrame()
			
			end




			def addSpriteFrameWithTexture(texture2d_pobTexture,rect_rect)
			
			end

    
		
			def self.create(array_arrayOfAnimationFrameNames=nil, float_delayPerUnit=nil, int_loops=nil)
			return Animation.new
			end			
    
		
			#def self.create()
			#return Animation.new
			#end			





			def self.createWithSpriteFrames(array_arrayOfSpriteFrameNames,float_delay,int_loops)
			return Animation.new
			end

	end
end
module CC
	class AnimationCache  < Ref





			def getAnimation(str_name)
			return Animation.new
			end

			def animation(str_name)
			return Animation.new
			end




			def addAnimation(animation_animation,str_name)
			
			end





			def init()
			
			end





			def addAnimationsWithDictionary(map_dictionary,str_plist)
			
			end





			def removeAnimation(str_name)
			
			end





			def addAnimationsWithFile(str_plist)
			
			end





			def self.destroyInstance()
			
			end





			def self.getInstance()
			return AnimationCache.new
			end

			def self.instance()
			return AnimationCache.new
			end




			def AnimationCache()
			
			end

	end
end
module CC
	class AnimationFrame  < Ref





			def setSpriteFrame(spriteframe_frame)
			
			end

				def spriteFrame=(spriteframe_frame)
				end
    
		
			#def getUserInfo()
			#
			#end			
    
		
			#def getUserInfo()
			#
			#end			





			def setDelayUnits(float_delayUnits)
			
			end

				def delayUnits=(float_delayUnits)
				end




			def clone()
			return AnimationFrame.new
			end





			def getSpriteFrame()
			return SpriteFrame.new
			end

			def spriteFrame()
			return SpriteFrame.new
			end




			def getDelayUnits()
			
			end

			def delayUnits()
			
			end




			def setUserInfo(map_userInfo)
			
			end

				def userInfo=(map_userInfo)
				end




			def self.create(spriteframe_spriteFrame,float_delayUnits,map_userInfo)
			return AnimationFrame.new
			end

	end
end
module CC
	class Application 





			def openURL(str_url)
			
			end





			def getTargetPlatform()
			
			end

			def targetPlatform()
			
			end




			def getCurrentLanguage()
			
			end

			def currentLanguage()
			
			end




			def getCurrentLanguageCode()
			
			end

			def currentLanguageCode()
			
			end




			def setAnimationInterval(double_interval)
			
			end

				def animationInterval=(double_interval)
				end




			def self.getInstance()
			return Application.new
			end

			def self.instance()
			return Application.new
			end
	end
end
module CC
	class AtlasNode  < Node





			def updateAtlasValues()
			
			end





			def getTexture()
			return Texture2D.new
			end

			def texture()
			return Texture2D.new
			end




			def setTextureAtlas(textureatlas_textureAtlas)
			
			end

				def textureAtlas=(textureatlas_textureAtlas)
				end




			def getTextureAtlas()
			return TextureAtlas.new
			end

			def textureAtlas()
			return TextureAtlas.new
			end




			def getQuadsToDraw()
			
			end

			def quadsToDraw()
			
			end




			def setTexture(texture2d_texture)
			
			end

				def texture=(texture2d_texture)
				end




			def setQuadsToDraw(long_quadsToDraw)
			
			end

				def quadsToDraw=(long_quadsToDraw)
				end




			def self.create(str_filename,int_tileWidth,int_tileHeight,int_itemsToRender)
			return AtlasNode.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end





			def isOpacityModifyRGB()
			
			end





			def setColor(color3b_color)
			
			end

				def color=(color3b_color)
				end




			def getColor()
			
			end

			def color()
			
			end




			def setOpacityModifyRGB(bool_isOpacityModifyRGB)
			
			end

				def opacityModifyRGB=(bool_isOpacityModifyRGB)
				end




			def setOpacity(char_opacity)
			
			end

				def opacity=(char_opacity)
				end
	end
end
module CC
	class AudioEngine 





			def self.lazyInit()
			
			end





			def self.setCurrentTime(int_audioID,float_time)
			
			end

				def self.currentTime=(int_audioID,float_time)
				end




			def self.getVolume(int_audioID)
			
			end

			def self.volume(int_audioID)
			
			end




			def self.uncache(str_filePath)
			
			end





			def self.resumeAll()
			
			end





			def self.stopAll()
			
			end





			def self.pause(int_audioID)
			
			end





			def self.end()
			
			end





			def self.getMaxAudioInstance()
			
			end

			def self.maxAudioInstance()
			
			end




			def self.getCurrentTime(int_audioID)
			
			end

			def self.currentTime(int_audioID)
			
			end




			def self.setMaxAudioInstance(int_maxInstances)
			
			end

				def self.maxAudioInstance=(int_maxInstances)
				end




			def self.isLoop(int_audioID)
			
			end





			def self.pauseAll()
			
			end





			def self.uncacheAll()
			
			end





			def self.setVolume(int_audioID,float_volume)
			
			end

				def self.volume=(int_audioID,float_volume)
				end




			def self.play2d(str_filePath,bool_loop,float_volume,audioprofile_profile)
			
			end





			def self.getState(int_audioID)
			
			end

			def self.state(int_audioID)
			
			end




			def self.resume(int_audioID)
			
			end





			def self.stop(int_audioID)
			
			end





			def self.getDuration(int_audioID)
			
			end

			def self.duration(int_audioID)
			
			end




			def self.setLoop(int_audioID,bool_loop)
			
			end

				def self.loop=(int_audioID,bool_loop)
				end
	end
end
module CC
	class BaseLight  < Node





			def setEnabled(bool_enabled)
			
			end

				def enabled=(bool_enabled)
				end




			def getIntensity()
			
			end

			def intensity()
			
			end




			def isEnabled()
			
			end





			def getLightType()
			
			end

			def lightType()
			
			end




			def setLightFlag(lightflag_flag)
			
			end

				def lightFlag=(lightflag_flag)
				end




			def setIntensity(float_intensity)
			
			end

				def intensity=(float_intensity)
				end




			def getLightFlag()
			
			end

			def lightFlag()
			
			end
	end
end
module CC
	class BezierBy  < ActionInterval





			def startWithTarget(node_target)
			
			end





			def clone()
			return BezierBy.new
			end





			def reverse()
			return BezierBy.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class BezierTo  < BezierBy





			def startWithTarget(node_target)
			
			end





			def clone()
			return BezierTo.new
			end





			def reverse()
			return BezierTo.new
			end

	end
end
module CC
	class Blink  < ActionInterval





			def self.create(float_duration,int_blinks)
			return Blink.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return Blink.new
			end





			def stop()
			
			end





			def reverse()
			return Blink.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class CallFunc  < ActionInstant





			def execute()
			
			end





			def getTargetCallback()
			return Ref.new
			end

			def targetCallback()
			return Ref.new
			end




			def setTargetCallback(ref_sel)
			
			end

				def targetCallback=(ref_sel)
				end




			def clone()
			return CallFunc.new
			end





			def update(float_time)
			
			end





			def reverse()
			return CallFunc.new
			end

	end
end
module CC
	class Camera  < Node





			def getProjectionMatrix()
			
			end

			def projectionMatrix()
			
			end




			def getViewProjectionMatrix()
			
			end

			def viewProjectionMatrix()
			
			end




			def getViewMatrix()
			
			end

			def viewMatrix()
			
			end




			def getCameraFlag()
			
			end

			def cameraFlag()
			
			end




			def getType()
			
			end

			def type()
			
			end




			def lookAt(vec3_target,vec3_up)
			
			end





			def setCameraFlag(cameraflag_flag)
			
			end

				def cameraFlag=(cameraflag_flag)
				end




			def self.create()
			return Camera.new
			end





			def self.createPerspective(float_fieldOfView,float_aspectRatio,float_nearPlane,float_farPlane)
			return Camera.new
			end





			def self.createOrthographic(float_zoomX,float_zoomY,float_nearPlane,float_farPlane)
			return Camera.new
			end





			def self.getVisitingCamera()
			
			end

			def self.visitingCamera()
			
			end




			def setPosition3D(vec3_position)
			
			end

				def position3D=(vec3_position)
				end
	end
end
module CC
	class CardinalSplineBy  < CardinalSplineTo





			def startWithTarget(node_target)
			
			end





			def clone()
			return CardinalSplineBy.new
			end





			def updatePosition(vec2_newPos)
			
			end





			def reverse()
			return CardinalSplineBy.new
			end





			def CardinalSplineBy()
			
			end

	end
end
module CC
	class CardinalSplineTo  < ActionInterval





			def getPoints()
			return PointArray.new
			end

			def points()
			return PointArray.new
			end




			def updatePosition(vec2_newPos)
			
			end





			def initWithDuration(float_duration,pointarray_points,float_tension)
			
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return CardinalSplineTo.new
			end





			def reverse()
			return CardinalSplineTo.new
			end





			def update(float_time)
			
			end





			def CardinalSplineTo()
			
			end

	end
end
module CC
	class CatmullRomBy  < CardinalSplineBy





			def initWithDuration(float_dt,pointarray_points)
			
			end





			def clone()
			return CatmullRomBy.new
			end





			def reverse()
			return CatmullRomBy.new
			end

	end
end
module CC
	class CatmullRomTo  < CardinalSplineTo





			def initWithDuration(float_dt,pointarray_points)
			
			end





			def clone()
			return CatmullRomTo.new
			end





			def reverse()
			return CatmullRomTo.new
			end

	end
end
module CC
	class ClippingNode  < Node





			def hasContent()
			
			end





			def setInverted(bool_inverted)
			
			end

				def inverted=(bool_inverted)
				end




			def setStencil(node_stencil)
			
			end

				def stencil=(node_stencil)
				end




			def getAlphaThreshold()
			
			end

			def alphaThreshold()
			
			end




			def getStencil()
			return Node.new
			end

			def stencil()
			return Node.new
			end




			def setAlphaThreshold(float_alphaThreshold)
			
			end

				def alphaThreshold=(float_alphaThreshold)
				end




			def isInverted()
			
			end

    
		
			def self.create(node_stencil=nil)
			return ClippingNode.new
			end			
    
		
			#def self.create()
			#return ClippingNode.new
			#end			





			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end

	end
end
module CC
	class ClippingRectangleNode  < Node





			def isClippingEnabled()
			
			end





			def setClippingEnabled(bool_enabled)
			
			end

				def clippingEnabled=(bool_enabled)
				end




			def getClippingRegion()
			
			end

			def clippingRegion()
			
			end




			def setClippingRegion(rect_clippingRegion)
			
			end

				def clippingRegion=(rect_clippingRegion)
				end
    
		
			#def self.create()
			#return ClippingRectangleNode.new
			#end			
    
		
			def self.create(rect_clippingRegion=nil)
			return ClippingRectangleNode.new
			end			





			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end

	end
end
module CC
	class Component  < Ref





			def setEnabled(bool_b)
			
			end

				def enabled=(bool_b)
				end




			def setName(str_name)
			
			end

				def name=(str_name)
				end




			def isEnabled()
			
			end





			def update(float_delta)
			
			end





			def getOwner()
			return Node.new
			end

			def owner()
			return Node.new
			end




			def init()
			
			end





			def setOwner(node_pOwner)
			
			end

				def owner=(node_pOwner)
				end




			def getName()
			
			end

			def name()
			
			end




			def self.create()
			return Component.new
			end

	end
end
module CC
	class Console  < Ref





			def stop()
			
			end





			def listenOnTCP(int_port)
			
			end





			def listenOnFileDescriptor(int_fd)
			
			end





			def log(char_buf)
			
			end

	end
end
module CC
	class DelayTime  < ActionInterval





			def self.create(float_d)
			return DelayTime.new
			end





			def clone()
			return DelayTime.new
			end





			def update(float_time)
			
			end





			def reverse()
			return DelayTime.new
			end

	end
end
module CC
	class Device 





			def self.setAccelerometerEnabled(bool_isEnabled)
			
			end

				def self.accelerometerEnabled=(bool_isEnabled)
				end




			def self.setKeepScreenOn(bool_value)
			
			end

				def self.keepScreenOn=(bool_value)
				end




			def self.setAccelerometerInterval(float_interval)
			
			end

				def self.accelerometerInterval=(float_interval)
				end




			def self.getDPI()
			
			end

			def self.dPI()
			
			end
	end
end
module CC
	class DirectionLight  < BaseLight





			def getDirection()
			
			end

			def direction()
			
			end




			def getDirectionInWorld()
			
			end

			def directionInWorld()
			
			end




			def setDirection(vec3_dir)
			
			end

				def direction=(vec3_dir)
				end




			def self.create(vec3_direction,color3b_color)
			return DirectionLight.new
			end





			def getLightType()
			
			end

			def lightType()
			
			end
	end
end
module CC
	class Director 





			def pause()
			
			end





			def setEventDispatcher(eventdispatcher_dispatcher)
			
			end

				def eventDispatcher=(eventdispatcher_dispatcher)
				end




			def setContentScaleFactor(float_scaleFactor)
			
			end

				def contentScaleFactor=(float_scaleFactor)
				end




			def getContentScaleFactor()
			
			end

			def contentScaleFactor()
			
			end




			def getWinSizeInPixels()
			
			end

			def winSizeInPixels()
			
			end




			def getDeltaTime()
			
			end

			def deltaTime()
			
			end




			def setGLDefaultValues()
			
			end

				def gLDefaultValues=()
				end




			def setActionManager(actionmanager_actionManager)
			
			end

				def actionManager=(actionmanager_actionManager)
				end




			def setAlphaBlending(bool_on)
			
			end

				def alphaBlending=(bool_on)
				end




			def popToRootScene()
			
			end





			def loadMatrix(matrix_stack_type_type,mat4_mat)
			
			end





			def getNotificationNode()
			return Node.new
			end

			def notificationNode()
			return Node.new
			end




			def getWinSize()
			
			end

			def winSize()
			
			end




			def getTextureCache()
			return TextureCache.new
			end

			def textureCache()
			return TextureCache.new
			end




			def isSendCleanupToScene()
			
			end





			def getVisibleOrigin()
			
			end

			def visibleOrigin()
			
			end




			def mainLoop()
			
			end





			def setDepthTest(bool_on)
			
			end

				def depthTest=(bool_on)
				end




			def getFrameRate()
			
			end

			def frameRate()
			
			end




			def getSecondsPerFrame()
			
			end

			def secondsPerFrame()
			
			end




			def resetMatrixStack()
			
			end





			def convertToUI(vec2_point)
			
			end





			def pushMatrix(matrix_stack_type_type)
			
			end





			def setDefaultValues()
			
			end

				def defaultValues=()
				end




			def init()
			
			end





			def setScheduler(scheduler_scheduler)
			
			end

				def scheduler=(scheduler_scheduler)
				end




			def startAnimation()
			
			end





			def getOpenGLView()
			return GLView.new
			end

			def openGLView()
			return GLView.new
			end




			def getRunningScene()
			return Scene.new
			end

			def runningScene()
			return Scene.new
			end




			def setViewport()
			
			end

				def viewport=()
				end




			def stopAnimation()
			
			end





			def popToSceneStackLevel(int_level)
			
			end





			def resume()
			
			end





			def isNextDeltaTimeZero()
			
			end





			def setOpenGLView(glview_openGLView)
			
			end

				def openGLView=(glview_openGLView)
				end




			def convertToGL(vec2_point)
			
			end





			def purgeCachedData()
			
			end





			def getTotalFrames()
			
			end

			def totalFrames()
			
			end




			def runWithScene(scene_scene)
			
			end





			def setNotificationNode(node_node)
			
			end

				def notificationNode=(node_node)
				end




			def drawScene()
			
			end





			def getMatrix(matrix_stack_type_type)
			
			end

			def matrix(matrix_stack_type_type)
			
			end




			def popScene()
			
			end





			def loadIdentityMatrix(matrix_stack_type_type)
			
			end





			def isDisplayStats()
			
			end





			def setProjection(projection_projection)
			
			end

				def projection=(projection_projection)
				end




			def getConsole()
			return Console.new
			end

			def console()
			return Console.new
			end




			def multiplyMatrix(matrix_stack_type_type,mat4_mat)
			
			end





			def getZEye()
			
			end

			def zEye()
			
			end




			def setNextDeltaTimeZero(bool_nextDeltaTimeZero)
			
			end

				def nextDeltaTimeZero=(bool_nextDeltaTimeZero)
				end




			def popMatrix(matrix_stack_type_type)
			
			end





			def getVisibleSize()
			
			end

			def visibleSize()
			
			end




			def getScheduler()
			return Scheduler.new
			end

			def scheduler()
			return Scheduler.new
			end




			def pushScene(scene_scene)
			
			end





			def getAnimationInterval()
			
			end

			def animationInterval()
			
			end




			def isPaused()
			
			end





			def setDisplayStats(bool_displayStats)
			
			end

				def displayStats=(bool_displayStats)
				end




			def getEventDispatcher()
			return EventDispatcher.new
			end

			def eventDispatcher()
			return EventDispatcher.new
			end




			def replaceScene(scene_scene)
			
			end





			def setAnimationInterval(double_interval)
			
			end

				def animationInterval=(double_interval)
				end




			def getActionManager()
			return ActionManager.new
			end

			def actionManager()
			return ActionManager.new
			end




			def self.getInstance()
			return Director.new
			end

			def self.instance()
			return Director.new
			end
	end
end
module CC
	class DrawNode  < Node





			def drawLine(vec2_origin,vec2_destination,color4f_color)
			
			end

    
		
			def drawRect(vec2_lb, vec2_lt, vec2_rt, vec2_rb=nil, color4f_color=nil)
			
			end			
    
		
			#def drawRect(vec2_lb, vec2_lt, color4f_rt)
			#
			#end			

    
		
			#def drawSolidCircle(vec2_center, float_radius, float_angle, int_segments, color4f_scaleX)
			#
			#end			
    
		
			def drawSolidCircle(vec2_center, float_radius, float_angle, int_segments, float_scaleX, float_scaleY=nil, color4f_color=nil)
			
			end			





			def onDrawGLPoint(mat4_transform,int_flags)
			
			end





			def drawDot(vec2_pos,float_radius,color4f_color)
			
			end





			def drawSegment(vec2_from,vec2_to,float_radius,color4f_color)
			
			end





			def onDraw(mat4_transform,int_flags)
			
			end

    
		
			#def drawCircle(vec2_center, float_radius, float_angle, int_segments, bool_drawLineToCenter, color4f_scaleX)
			#
			#end			
    
		
			def drawCircle(vec2_center, float_radius, float_angle, int_segments, bool_drawLineToCenter, float_scaleX, float_scaleY=nil, color4f_color=nil)
			
			end			





			def drawQuadBezier(vec2_origin,vec2_control,vec2_destination,int_segments,color4f_color)
			
			end





			def onDrawGLLine(mat4_transform,int_flags)
			
			end





			def drawTriangle(vec2_p1,vec2_p2,vec2_p3,color4f_color)
			
			end





			def clear()
			
			end





			def drawSolidRect(vec2_origin,vec2_destination,color4f_color)
			
			end





			def drawPoint(vec2_point,float_pointSize,color4f_color)
			
			end





			def drawCubicBezier(vec2_origin,vec2_control1,vec2_control2,vec2_destination,int_segments,color4f_color)
			
			end





			def self.create()
			return DrawNode.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end

	end
end
module CC
	class EaseBackIn  < ActionEase





			def self.create(actioninterval_action)
			return EaseBackIn.new
			end





			def clone()
			return EaseBackIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ActionEase.new
			end

	end
end
module CC
	class EaseBackInOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseBackInOut.new
			end





			def clone()
			return EaseBackInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseBackInOut.new
			end

	end
end
module CC
	class EaseBackOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseBackOut.new
			end





			def clone()
			return EaseBackOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ActionEase.new
			end

	end
end
module CC
	class EaseBezierAction  < ActionEase





			def setBezierParamer(float_p0,float_p1,float_p2,float_p3)
			
			end

				def bezierParamer=(float_p0,float_p1,float_p2,float_p3)
				end




			def self.create(actioninterval_action)
			return EaseBezierAction.new
			end





			def clone()
			return EaseBezierAction.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseBezierAction.new
			end

	end
end
module CC
	class EaseBounce  < ActionEase





			def clone()
			return EaseBounce.new
			end





			def reverse()
			return EaseBounce.new
			end

	end
end
module CC
	class EaseBounceIn  < EaseBounce





			def self.create(actioninterval_action)
			return EaseBounceIn.new
			end





			def clone()
			return EaseBounceIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseBounce.new
			end

	end
end
module CC
	class EaseBounceInOut  < EaseBounce





			def self.create(actioninterval_action)
			return EaseBounceInOut.new
			end





			def clone()
			return EaseBounceInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseBounceInOut.new
			end

	end
end
module CC
	class EaseBounceOut  < EaseBounce





			def self.create(actioninterval_action)
			return EaseBounceOut.new
			end





			def clone()
			return EaseBounceOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseBounce.new
			end

	end
end
module CC
	class EaseCircleActionIn  < ActionEase





			def self.create(actioninterval_action)
			return EaseCircleActionIn.new
			end





			def clone()
			return EaseCircleActionIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseCircleActionIn.new
			end

	end
end
module CC
	class EaseCircleActionInOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseCircleActionInOut.new
			end





			def clone()
			return EaseCircleActionInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseCircleActionInOut.new
			end

	end
end
module CC
	class EaseCircleActionOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseCircleActionOut.new
			end





			def clone()
			return EaseCircleActionOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseCircleActionOut.new
			end

	end
end
module CC
	class EaseCubicActionIn  < ActionEase





			def self.create(actioninterval_action)
			return EaseCubicActionIn.new
			end





			def clone()
			return EaseCubicActionIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseCubicActionIn.new
			end

	end
end
module CC
	class EaseCubicActionInOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseCubicActionInOut.new
			end





			def clone()
			return EaseCubicActionInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseCubicActionInOut.new
			end

	end
end
module CC
	class EaseCubicActionOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseCubicActionOut.new
			end





			def clone()
			return EaseCubicActionOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseCubicActionOut.new
			end

	end
end
module CC
	class EaseElastic  < ActionEase





			def setPeriod(float_fPeriod)
			
			end

				def period=(float_fPeriod)
				end




			def getPeriod()
			
			end

			def period()
			
			end




			def clone()
			return EaseElastic.new
			end





			def reverse()
			return EaseElastic.new
			end

	end
end
module CC
	class EaseElasticIn  < EaseElastic

    
		
			#def self.create(actioninterval_action)
			#return EaseElasticIn.new
			#end			
    
		
			def self.create(actioninterval_action, float_period=nil)
			return EaseElasticIn.new
			end			





			def clone()
			return EaseElasticIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseElastic.new
			end

	end
end
module CC
	class EaseElasticInOut  < EaseElastic

    
		
			#def self.create(actioninterval_action)
			#return EaseElasticInOut.new
			#end			
    
		
			def self.create(actioninterval_action, float_period=nil)
			return EaseElasticInOut.new
			end			





			def clone()
			return EaseElasticInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseElasticInOut.new
			end

	end
end
module CC
	class EaseElasticOut  < EaseElastic

    
		
			#def self.create(actioninterval_action)
			#return EaseElasticOut.new
			#end			
    
		
			def self.create(actioninterval_action, float_period=nil)
			return EaseElasticOut.new
			end			





			def clone()
			return EaseElasticOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseElastic.new
			end

	end
end
module CC
	class EaseExponentialIn  < ActionEase





			def self.create(actioninterval_action)
			return EaseExponentialIn.new
			end





			def clone()
			return EaseExponentialIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ActionEase.new
			end

	end
end
module CC
	class EaseExponentialInOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseExponentialInOut.new
			end





			def clone()
			return EaseExponentialInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseExponentialInOut.new
			end

	end
end
module CC
	class EaseExponentialOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseExponentialOut.new
			end





			def clone()
			return EaseExponentialOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ActionEase.new
			end

	end
end
module CC
	class EaseIn  < EaseRateAction





			def self.create(actioninterval_action,float_rate)
			return EaseIn.new
			end





			def clone()
			return EaseIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseIn.new
			end

	end
end
module CC
	class EaseInOut  < EaseRateAction





			def self.create(actioninterval_action,float_rate)
			return EaseInOut.new
			end





			def clone()
			return EaseInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseInOut.new
			end

	end
end
module CC
	class EaseOut  < EaseRateAction





			def self.create(actioninterval_action,float_rate)
			return EaseOut.new
			end





			def clone()
			return EaseOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseOut.new
			end

	end
end
module CC
	class EaseQuadraticActionIn  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuadraticActionIn.new
			end





			def clone()
			return EaseQuadraticActionIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuadraticActionIn.new
			end

	end
end
module CC
	class EaseQuadraticActionInOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuadraticActionInOut.new
			end





			def clone()
			return EaseQuadraticActionInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuadraticActionInOut.new
			end

	end
end
module CC
	class EaseQuadraticActionOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuadraticActionOut.new
			end





			def clone()
			return EaseQuadraticActionOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuadraticActionOut.new
			end

	end
end
module CC
	class EaseQuarticActionIn  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuarticActionIn.new
			end





			def clone()
			return EaseQuarticActionIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuarticActionIn.new
			end

	end
end
module CC
	class EaseQuarticActionInOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuarticActionInOut.new
			end





			def clone()
			return EaseQuarticActionInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuarticActionInOut.new
			end

	end
end
module CC
	class EaseQuarticActionOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuarticActionOut.new
			end





			def clone()
			return EaseQuarticActionOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuarticActionOut.new
			end

	end
end
module CC
	class EaseQuinticActionIn  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuinticActionIn.new
			end





			def clone()
			return EaseQuinticActionIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuinticActionIn.new
			end

	end
end
module CC
	class EaseQuinticActionInOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuinticActionInOut.new
			end





			def clone()
			return EaseQuinticActionInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuinticActionInOut.new
			end

	end
end
module CC
	class EaseQuinticActionOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseQuinticActionOut.new
			end





			def clone()
			return EaseQuinticActionOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseQuinticActionOut.new
			end

	end
end
module CC
	class EaseRateAction  < ActionEase





			def setRate(float_rate)
			
			end

				def rate=(float_rate)
				end




			def getRate()
			
			end

			def rate()
			
			end




			def clone()
			return EaseRateAction.new
			end





			def reverse()
			return EaseRateAction.new
			end

	end
end
module CC
	class EaseSineIn  < ActionEase





			def self.create(actioninterval_action)
			return EaseSineIn.new
			end





			def clone()
			return EaseSineIn.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ActionEase.new
			end

	end
end
module CC
	class EaseSineInOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseSineInOut.new
			end





			def clone()
			return EaseSineInOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return EaseSineInOut.new
			end

	end
end
module CC
	class EaseSineOut  < ActionEase





			def self.create(actioninterval_action)
			return EaseSineOut.new
			end





			def clone()
			return EaseSineOut.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ActionEase.new
			end

	end
end
module CC
	class Event  < Ref





			def isStopped()
			
			end





			def getType()
			
			end

			def type()
			
			end




			def getCurrentTarget()
			return Node.new
			end

			def currentTarget()
			return Node.new
			end




			def stopPropagation()
			
			end

	end
end
module CC
	class EventAcceleration  < Event

	end
end
module CC
	class EventCustom  < Event





			def getEventName()
			
			end

			def eventName()
			
			end




			def EventCustom(str_eventName)
			
			end

	end
end
module CC
	class EventDispatcher  < Ref





			def pauseEventListenersForTarget(node_target,bool_recursive)
			
			end





			def addEventListenerWithSceneGraphPriority(eventlistener_listener,node_node)
			
			end





			def setEnabled(bool_isEnabled)
			
			end

				def enabled=(bool_isEnabled)
				end




			def addEventListenerWithFixedPriority(eventlistener_listener,int_fixedPriority)
			
			end





			def removeEventListener(eventlistener_listener)
			
			end





			def resumeEventListenersForTarget(node_target,bool_recursive)
			
			end





			def removeEventListenersForTarget(node_target,bool_recursive)
			
			end





			def setPriority(eventlistener_listener,int_fixedPriority)
			
			end

				def priority=(eventlistener_listener,int_fixedPriority)
				end




			def addCustomEventListener(str_eventName,func_callback)
			return EventListenerCustom.new
			end





			def dispatchEvent(event_event)
			
			end





			def removeAllEventListeners()
			
			end





			def removeCustomEventListeners(str_customEventName)
			
			end





			def isEnabled()
			
			end





			def removeEventListenersForType(type_listenerType)
			
			end





			def EventDispatcher()
			
			end

	end
end
module CC
	class EventFocus  < Event

	end
end
module CC
	class EventKeyboard  < Event





			def EventKeyboard(keycode_keyCode,bool_isPressed)
			
			end

	end
end
module CC
	class EventListener  < Ref





			def setEnabled(bool_enabled)
			
			end

				def enabled=(bool_enabled)
				end




			def clone()
			return EventListener.new
			end





			def isEnabled()
			
			end





			def checkAvailable()
			
			end

	end
end
module CC
	class EventListenerAcceleration  < EventListener





			def self.create(func_callback)
			return EventListenerAcceleration.new
			end





			def clone()
			return EventListenerAcceleration.new
			end





			def checkAvailable()
			
			end

	end
end
module CC
	class EventListenerCustom  < EventListener





			def self.create(str_eventName,func_callback)
			return EventListenerCustom.new
			end





			def clone()
			return EventListenerCustom.new
			end





			def checkAvailable()
			
			end

	end
end
module CC
	class EventListenerFocus  < EventListener





			def self.create()
			return EventListenerFocus.new
			end





			def clone()
			return EventListenerFocus.new
			end





			def checkAvailable()
			
			end

	end
end
module CC
	class EventListenerKeyboard  < EventListener





			def self.create()
			return EventListenerKeyboard.new
			end





			def clone()
			return EventListenerKeyboard.new
			end





			def checkAvailable()
			
			end

	end
end
module CC
	class EventListenerMouse  < EventListener





			def self.create()
			return EventListenerMouse.new
			end





			def clone()
			return EventListenerMouse.new
			end





			def checkAvailable()
			
			end

	end
end
module CC
	class EventListenerTouchAllAtOnce  < EventListener





			def self.create()
			return EventListenerTouchAllAtOnce.new
			end





			def clone()
			return EventListenerTouchAllAtOnce.new
			end





			def checkAvailable()
			
			end

	end
end
module CC
	class EventListenerTouchOneByOne  < EventListener





			def isSwallowTouches()
			
			end





			def setSwallowTouches(bool_needSwallow)
			
			end

				def swallowTouches=(bool_needSwallow)
				end




			def self.create()
			return EventListenerTouchOneByOne.new
			end





			def clone()
			return EventListenerTouchOneByOne.new
			end





			def checkAvailable()
			
			end

	end
end
module CC
	class EventMouse  < Event





			def getPreviousLocationInView()
			
			end

			def previousLocationInView()
			
			end




			def getLocation()
			
			end

			def location()
			
			end




			def getMouseButton()
			
			end

			def mouseButton()
			
			end




			def getPreviousLocation()
			
			end

			def previousLocation()
			
			end




			def getDelta()
			
			end

			def delta()
			
			end




			def setScrollData(float_scrollX,float_scrollY)
			
			end

				def scrollData=(float_scrollX,float_scrollY)
				end




			def getStartLocationInView()
			
			end

			def startLocationInView()
			
			end




			def getStartLocation()
			
			end

			def startLocation()
			
			end




			def setMouseButton(int_button)
			
			end

				def mouseButton=(int_button)
				end




			def getLocationInView()
			
			end

			def locationInView()
			
			end




			def getScrollY()
			
			end

			def scrollY()
			
			end




			def getScrollX()
			
			end

			def scrollX()
			
			end




			def getCursorX()
			
			end

			def cursorX()
			
			end




			def getCursorY()
			
			end

			def cursorY()
			
			end




			def setCursorPosition(float_x,float_y)
			
			end

				def cursorPosition=(float_x,float_y)
				end




			def EventMouse(mouseeventtype_mouseEventCode)
			
			end

	end
end
module CC
	class EventTouch  < Event





			def getEventCode()
			
			end

			def eventCode()
			
			end




			def setEventCode(eventcode_eventCode)
			
			end

				def eventCode=(eventcode_eventCode)
				end




			def EventTouch()
			
			end

	end
end
module CC
	class FadeIn  < FadeTo





			def setReverseAction(fadeto_ac)
			
			end

				def reverseAction=(fadeto_ac)
				end




			def self.create(float_d)
			return FadeIn.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return FadeIn.new
			end





			def reverse()
			return FadeTo.new
			end

	end
end
module CC
	class FadeOut  < FadeTo





			def setReverseAction(fadeto_ac)
			
			end

				def reverseAction=(fadeto_ac)
				end




			def self.create(float_d)
			return FadeOut.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return FadeOut.new
			end





			def reverse()
			return FadeTo.new
			end

	end
end
module CC
	class FadeOutBLTiles  < FadeOutTRTiles





			def self.create(float_duration,size_gridSize)
			return FadeOutBLTiles.new
			end





			def clone()
			return FadeOutBLTiles.new
			end





			def testFunc(size_pos,float_time)
			
			end

	end
end
module CC
	class FadeOutDownTiles  < FadeOutUpTiles





			def self.create(float_duration,size_gridSize)
			return FadeOutDownTiles.new
			end





			def clone()
			return FadeOutDownTiles.new
			end





			def testFunc(size_pos,float_time)
			
			end

	end
end
module CC
	class FadeOutTRTiles  < TiledGrid3DAction





			def turnOnTile(vec2_pos)
			
			end





			def turnOffTile(vec2_pos)
			
			end





			def transformTile(vec2_pos,float_distance)
			
			end





			def testFunc(size_pos,float_time)
			
			end





			def self.create(float_duration,size_gridSize)
			return FadeOutTRTiles.new
			end





			def clone()
			return FadeOutTRTiles.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class FadeOutUpTiles  < FadeOutTRTiles





			def transformTile(vec2_pos,float_distance)
			
			end





			def self.create(float_duration,size_gridSize)
			return FadeOutUpTiles.new
			end





			def clone()
			return FadeOutUpTiles.new
			end





			def testFunc(size_pos,float_time)
			
			end

	end
end
module CC
	class FadeTo  < ActionInterval





			def self.create(float_duration,char_opacity)
			return FadeTo.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return FadeTo.new
			end





			def reverse()
			return FadeTo.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class FileUtils 





			def fullPathForFilename(str_filename)
			
			end





			def getStringFromFile(str_filename)
			
			end

			def stringFromFile(str_filename)
			
			end




			def setFilenameLookupDictionary(map_filenameLookupDict)
			
			end

				def filenameLookupDictionary=(map_filenameLookupDict)
				end




			def removeFile(str_filepath)
			
			end





			def isAbsolutePath(str_path)
			
			end





			def renameFile(str_path,str_oldname,str_name)
			
			end





			def loadFilenameLookupDictionaryFromFile(str_filename)
			
			end





			def isPopupNotify()
			
			end





			def writeToFile(map_dict,str_fullPath)
			
			end





			def getValueMapFromFile(str_filename)
			
			end

			def valueMapFromFile(str_filename)
			
			end




			def getValueMapFromData(char_filedata,int_filesize)
			
			end

			def valueMapFromData(char_filedata,int_filesize)
			
			end




			def removeDirectory(str_dirPath)
			
			end





			def getFileSize(str_filepath)
			
			end

			def fileSize(str_filepath)
			
			end




			def addSearchResolutionsOrder(str_order,bool_front)
			
			end





			def addSearchPath(str_path,bool_front)
			
			end





			def isFileExist(str_filename)
			
			end





			def purgeCachedEntries()
			
			end





			def fullPathFromRelativeFile(str_filename,str_relativeFile)
			
			end





			def setPopupNotify(bool_notify)
			
			end

				def popupNotify=(bool_notify)
				end




			def isDirectoryExist(str_dirPath)
			
			end





			def createDirectory(str_dirPath)
			
			end





			def getWritablePath()
			
			end

			def writablePath()
			
			end




			def self.destroyInstance()
			
			end





			def self.getInstance()
			return FileUtils.new
			end

			def self.instance()
			return FileUtils.new
			end
	end
end
module CC
	class FiniteTimeAction  < Action





			def setDuration(float_duration)
			
			end

				def duration=(float_duration)
				end




			def getDuration()
			
			end

			def duration()
			
			end




			def clone()
			return FiniteTimeAction.new
			end





			def reverse()
			return FiniteTimeAction.new
			end

	end
end
module CC
	class FlipX  < ActionInstant





			def self.create(bool_x)
			return FlipX.new
			end





			def clone()
			return FlipX.new
			end





			def update(float_time)
			
			end





			def reverse()
			return FlipX.new
			end

	end
end
module CC
	class FlipX3D  < Grid3DAction





			def self.create(float_duration)
			return FlipX3D.new
			end





			def clone()
			return FlipX3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class FlipY  < ActionInstant





			def self.create(bool_y)
			return FlipY.new
			end





			def clone()
			return FlipY.new
			end





			def update(float_time)
			
			end





			def reverse()
			return FlipY.new
			end

	end
end
module CC
	class FlipY3D  < FlipX3D





			def self.create(float_duration)
			return FlipY3D.new
			end





			def clone()
			return FlipY3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Follow  < Action





			def setBoundarySet(bool_value)
			
			end

				def boundarySet=(bool_value)
				end




			def isBoundarySet()
			
			end





			def self.create(node_followedNode,rect_rect)
			return Follow.new
			end





			def step(float_dt)
			
			end





			def clone()
			return Follow.new
			end





			def stop()
			
			end





			def reverse()
			return Follow.new
			end





			def isDone()
			
			end

	end
end
module CC
	class GLProgram  < Ref





			def getFragmentShaderLog()
			
			end

			def fragmentShaderLog()
			
			end




			def initWithByteArrays(char_vShaderByteArray,char_fShaderByteArray)
			
			end





			def initWithFilenames(str_vShaderFilename,str_fShaderFilename)
			
			end





			def use()
			
			end





			def getVertexShaderLog()
			
			end

			def vertexShaderLog()
			
			end
    
		
			def setUniformsForBuiltins(mat4_modelView=nil)
			
			end			
    
		
			#def setUniformsForBuiltins()
			#
			#end			





			def updateUniforms()
			
			end





			def setUniformLocationWith1i(int_location,int_i1)
			
			end

				def uniformLocationWith1i=(int_location,int_i1)
				end




			def reset()
			
			end





			def bindAttribLocation(str_attributeName,int_index)
			
			end





			def getAttribLocation(str_attributeName)
			
			end

			def attribLocation(str_attributeName)
			
			end




			def link()
			
			end





			def self.createWithByteArrays(char_vShaderByteArray,char_fShaderByteArray)
			return GLProgram.new
			end





			def self.createWithFilenames(str_vShaderFilename,str_fShaderFilename)
			return GLProgram.new
			end





			def GLProgram()
			
			end

	end
end
module CC
	class GLProgramCache  < Ref





			def addGLProgram(glprogram_program,str_key)
			
			end





			def getGLProgram(str_key)
			return GLProgram.new
			end

			def gLProgram(str_key)
			return GLProgram.new
			end




			def reloadDefaultGLPrograms()
			
			end





			def loadDefaultGLPrograms()
			
			end





			def self.destroyInstance()
			
			end





			def self.getInstance()
			return GLProgramCache.new
			end

			def self.instance()
			return GLProgramCache.new
			end




			def GLProgramCache()
			
			end

	end
end
module CC
	class GLProgramState  < Ref

    
		
			def setUniformTexture(str_uniformName, int_textureId)
			
			end			
    
		
			#def setUniformTexture(str_uniformName, texture2d_textureId)
			#
			#end			
    
		
			#def setUniformTexture(int_uniformName, texture2d_textureId)
			#
			#end			
    
		
			#def setUniformTexture(int_uniformName, int_textureId)
			#
			#end			

    
		
			def setUniformMat4(int_uniformLocation, mat4_value)
			
			end			
    
		
			#def setUniformMat4(str_uniformLocation, mat4_value)
			#
			#end			





			def applyUniforms()
			
			end





			def applyGLProgram(mat4_modelView)
			
			end





			def getUniformCount()
			
			end

			def uniformCount()
			
			end




			def applyAttributes()
			
			end

    
		
			def setUniformFloat(int_uniformLocation, float_value)
			
			end			
    
		
			#def setUniformFloat(str_uniformLocation, float_value)
			#
			#end			

    
		
			def setUniformVec3(int_uniformLocation, vec3_value)
			
			end			
    
		
			#def setUniformVec3(str_uniformLocation, vec3_value)
			#
			#end			

    
		
			def setUniformInt(int_uniformLocation, int_value)
			
			end			
    
		
			#def setUniformInt(str_uniformLocation, int_value)
			#
			#end			





			def getVertexAttribCount()
			
			end

			def vertexAttribCount()
			
			end
    
		
			def setUniformVec4(int_uniformLocation, vec4_value)
			
			end			
    
		
			#def setUniformVec4(str_uniformLocation, vec4_value)
			#
			#end			





			def setGLProgram(glprogram_glprogram)
			
			end

				def gLProgram=(glprogram_glprogram)
				end
    
		
			def setUniformVec2(int_uniformLocation, vec2_value)
			
			end			
    
		
			#def setUniformVec2(str_uniformLocation, vec2_value)
			#
			#end			





			def getVertexAttribsFlags()
			
			end

			def vertexAttribsFlags()
			
			end




			def apply(mat4_modelView)
			
			end





			def getGLProgram()
			return GLProgram.new
			end

			def gLProgram()
			return GLProgram.new
			end




			def self.create(glprogram_glprogram)
			return GLProgramState.new
			end





			def self.getOrCreateWithGLProgramName(str_glProgramName)
			return GLProgramState.new
			end

			def self.orCreateWithGLProgramName(str_glProgramName)
			return GLProgramState.new
			end




			def self.getOrCreateWithGLProgram(glprogram_glprogram)
			return GLProgramState.new
			end

			def self.orCreateWithGLProgram(glprogram_glprogram)
			return GLProgramState.new
			end
	end
end
module CC
	class GLView  < Ref





			def setFrameSize(float_width,float_height)
			
			end

				def frameSize=(float_width,float_height)
				end




			def getViewPortRect()
			
			end

			def viewPortRect()
			
			end




			def setContentScaleFactor(float_scaleFactor)
			
			end

				def contentScaleFactor=(float_scaleFactor)
				end




			def getContentScaleFactor()
			
			end

			def contentScaleFactor()
			
			end




			def setIMEKeyboardState(bool_open)
			
			end

				def iMEKeyboardState=(bool_open)
				end




			def setScissorInPoints(float_x,float_y,float_w,float_h)
			
			end

				def scissorInPoints=(float_x,float_y,float_w,float_h)
				end




			def getViewName()
			
			end

			def viewName()
			
			end




			def isOpenGLReady()
			
			end





			def end()
			
			end





			def getScaleY()
			
			end

			def scaleY()
			
			end




			def getScaleX()
			
			end

			def scaleX()
			
			end




			def getVisibleOrigin()
			
			end

			def visibleOrigin()
			
			end




			def getFrameSize()
			
			end

			def frameSize()
			
			end




			def setFrameZoomFactor(float_zoomFactor)
			
			end

				def frameZoomFactor=(float_zoomFactor)
				end




			def getFrameZoomFactor()
			
			end

			def frameZoomFactor()
			
			end




			def getDesignResolutionSize()
			
			end

			def designResolutionSize()
			
			end




			def windowShouldClose()
			
			end





			def swapBuffers()
			
			end





			def setDesignResolutionSize(float_width,float_height,resolutionpolicy_resolutionPolicy)
			
			end

				def designResolutionSize=(float_width,float_height,resolutionpolicy_resolutionPolicy)
				end




			def getResolutionPolicy()
			
			end

			def resolutionPolicy()
			
			end




			def isRetinaDisplay()
			
			end





			def setViewPortInPoints(float_x,float_y,float_w,float_h)
			
			end

				def viewPortInPoints=(float_x,float_y,float_w,float_h)
				end




			def getScissorRect()
			
			end

			def scissorRect()
			
			end




			def getRetinaFactor()
			
			end

			def retinaFactor()
			
			end




			def setViewName(str_viewname)
			
			end

				def viewName=(str_viewname)
				end




			def getVisibleRect()
			
			end

			def visibleRect()
			
			end




			def getVisibleSize()
			
			end

			def visibleSize()
			
			end




			def isScissorEnabled()
			
			end





			def pollEvents()
			
			end





			def self.setGLContextAttrs(glcontextattrs_glContextAttrs)
			
			end

				def self.gLContextAttrs=(glcontextattrs_glContextAttrs)
				end




			def self.getGLContextAttrs()
			
			end

			def self.gLContextAttrs()
			
			end
	end
end
module CC
	class GLViewImpl  < GLView





			def self.createWithRect(str_viewName,rect_rect,float_frameZoomFactor)
			return GLViewImpl.new
			end





			def self.create(str_viewname)
			return GLViewImpl.new
			end





			def self.createWithFullScreen(str_viewName)
			return GLViewImpl.new
			end





			def setIMEKeyboardState(bool_bOpen)
			
			end

				def iMEKeyboardState=(bool_bOpen)
				end




			def isOpenGLReady()
			
			end

	end
end
module CC
	class Grid3D  < GridBase





			def getNeedDepthTestForBlit()
			
			end

			def needDepthTestForBlit()
			
			end




			def setNeedDepthTestForBlit(bool_neededDepthTest)
			
			end

				def needDepthTestForBlit=(bool_neededDepthTest)
				end
    
		
			#def self.create(size_gridSize)
			#return Grid3D.new
			#end			
    
		
			def self.create(size_gridSize, texture2d_texture=nil, bool_flipped=nil)
			return Grid3D.new
			end			





			def calculateVertexPoints()
			
			end





			def beforeBlit()
			
			end





			def afterBlit()
			
			end





			def reuse()
			
			end





			def blit()
			
			end





			def Grid3D()
			
			end

	end
end
module CC
	class Grid3DAction  < GridAction





			def getGrid()
			return GridBase.new
			end

			def grid()
			return GridBase.new
			end




			def clone()
			return Grid3DAction.new
			end

	end
end
module CC
	class GridAction  < ActionInterval





			def getGrid()
			return GridBase.new
			end

			def grid()
			return GridBase.new
			end




			def startWithTarget(node_target)
			
			end





			def clone()
			return GridAction.new
			end





			def reverse()
			return GridAction.new
			end

	end
end
module CC
	class GridBase  < Ref





			def setGridSize(size_gridSize)
			
			end

				def gridSize=(size_gridSize)
				end




			def afterBlit()
			
			end





			def afterDraw(node_target)
			
			end





			def beforeDraw()
			
			end





			def calculateVertexPoints()
			
			end





			def isTextureFlipped()
			
			end





			def getGridSize()
			
			end

			def gridSize()
			
			end




			def getStep()
			
			end

			def step()
			
			end




			def set2DProjection()
			
			end





			def setStep(vec2_step)
			
			end

				def step=(vec2_step)
				end




			def setTextureFlipped(bool_flipped)
			
			end

				def textureFlipped=(bool_flipped)
				end




			def blit()
			
			end





			def setActive(bool_active)
			
			end

				def active=(bool_active)
				end




			def getReuseGrid()
			
			end

			def reuseGrid()
			
			end
    
		
			#def initWithSize(size_gridSize)
			#
			#end			
    
		
			def initWithSize(size_gridSize, texture2d_texture=nil, bool_flipped=nil)
			
			end			





			def beforeBlit()
			
			end





			def setReuseGrid(int_reuseGrid)
			
			end

				def reuseGrid=(int_reuseGrid)
				end




			def isActive()
			
			end





			def reuse()
			
			end

    
		
			#def self.create(size_gridSize)
			#return GridBase.new
			#end			
    
		
			def self.create(size_gridSize, texture2d_texture=nil, bool_flipped=nil)
			return GridBase.new
			end			

	end
end
module CC
	class Hide  < ActionInstant





			def self.create()
			return Hide.new
			end





			def clone()
			return Hide.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ActionInstant.new
			end

	end
end
module CC
	class Image  < Ref





			def hasPremultipliedAlpha()
			
			end





			def saveToFile(str_filename,bool_isToRGB)
			
			end





			def hasAlpha()
			
			end





			def isCompressed()
			
			end





			def getHeight()
			
			end

			def height()
			
			end




			def initWithImageFile(str_path)
			
			end





			def getWidth()
			
			end

			def width()
			
			end




			def getBitPerPixel()
			
			end

			def bitPerPixel()
			
			end




			def getFileType()
			
			end

			def fileType()
			
			end




			def getNumberOfMipmaps()
			
			end

			def numberOfMipmaps()
			
			end




			def getRenderFormat()
			
			end

			def renderFormat()
			
			end




			def self.setPVRImagesHavePremultipliedAlpha(bool_haveAlphaPremultiplied)
			
			end

				def self.pVRImagesHavePremultipliedAlpha=(bool_haveAlphaPremultiplied)
				end




			def Image()
			
			end

	end
end
module CC
	class JumpBy  < ActionInterval





			def self.create(float_duration,vec2_position,float_height,int_jumps)
			return JumpBy.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return JumpBy.new
			end





			def reverse()
			return JumpBy.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class JumpTiles3D  < TiledGrid3DAction





			def getAmplitudeRate()
			
			end

			def amplitudeRate()
			
			end




			def setAmplitude(float_amplitude)
			
			end

				def amplitude=(float_amplitude)
				end




			def setAmplitudeRate(float_amplitudeRate)
			
			end

				def amplitudeRate=(float_amplitudeRate)
				end




			def getAmplitude()
			
			end

			def amplitude()
			
			end




			def self.create(float_duration,size_gridSize,int_numberOfJumps,float_amplitude)
			return JumpTiles3D.new
			end





			def clone()
			return JumpTiles3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class JumpTo  < JumpBy





			def self.create(float_duration,vec2_position,float_height,int_jumps)
			return JumpTo.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return JumpTo.new
			end





			def reverse()
			return JumpTo.new
			end

	end
end
module CC
	class Label  < SpriteBatchNode





			def isClipMarginEnabled()
			
			end





			def enableShadow()
			
			end





			def setDimensions(int_width,int_height)
			
			end

				def dimensions=(int_width,int_height)
				end




			def getString()
			
			end

			def string()
			
			end




			def getHeight()
			
			end

			def height()
			
			end




			def disableEffect()
			
			end





			def setTTFConfig(_ttfconfig_ttfConfig)
			
			end

				def tTFConfig=(_ttfconfig_ttfConfig)
				end




			def getTextColor()
			
			end

			def textColor()
			
			end




			def setWidth(int_width)
			
			end

				def width=(int_width)
				end




			def getMaxLineWidth()
			
			end

			def maxLineWidth()
			
			end




			def getHorizontalAlignment()
			
			end

			def horizontalAlignment()
			
			end




			def setClipMarginEnabled(bool_clipEnabled)
			
			end

				def clipMarginEnabled=(bool_clipEnabled)
				end




			def setString(str_text)
			
			end

				def string=(str_text)
				end




			def setSystemFontName(str_systemFont)
			
			end

				def systemFontName=(str_systemFont)
				end




			def setBMFontFilePath(str_bmfontFilePath,vec2_imageOffset)
			
			end

				def bMFontFilePath=(str_bmfontFilePath,vec2_imageOffset)
				end




			def getFontAtlas()
			return FontAtlas.new
			end

			def fontAtlas()
			return FontAtlas.new
			end




			def setLineHeight(float_height)
			
			end

				def lineHeight=(float_height)
				end




			def setSystemFontSize(float_fontSize)
			
			end

				def systemFontSize=(float_fontSize)
				end




			def updateContent()
			
			end





			def getStringLength()
			
			end

			def stringLength()
			
			end




			def setLineBreakWithoutSpace(bool_breakWithoutSpace)
			
			end

				def lineBreakWithoutSpace=(bool_breakWithoutSpace)
				end




			def getStringNumLines()
			
			end

			def stringNumLines()
			
			end




			def enableOutline(color4b_outlineColor,int_outlineSize)
			
			end





			def getAdditionalKerning()
			
			end

			def additionalKerning()
			
			end
    
		
			def setCharMap(texture2d_texture, int_itemWidth=nil, int_itemHeight=nil, int_startCharMap=nil)
			
			end			
    
		
			#def setCharMap(str_texture, int_itemWidth=nil, int_itemHeight=nil, int_startCharMap=nil)
			#
			#end			
    
		
			#def setCharMap(str_texture)
			#
			#end			





			def getDimensions()
			
			end

			def dimensions()
			
			end




			def setMaxLineWidth(int_maxLineWidth)
			
			end

				def maxLineWidth=(int_maxLineWidth)
				end




			def getSystemFontName()
			
			end

			def systemFontName()
			
			end




			def setVerticalAlignment(textvalignment_vAlignment)
			
			end

				def verticalAlignment=(textvalignment_vAlignment)
				end




			def getLineHeight()
			
			end

			def lineHeight()
			
			end




			def getTTFConfig()
			
			end

			def tTFConfig()
			
			end




			def getVerticalAlignment()
			
			end

			def verticalAlignment()
			
			end




			def setTextColor(color4b_color)
			
			end

				def textColor=(color4b_color)
				end




			def setHeight(int_height)
			
			end

				def height=(int_height)
				end




			def getWidth()
			
			end

			def width()
			
			end




			def enableGlow(color4b_glowColor)
			
			end





			def getLetter(int_lettetIndex)
			return Sprite.new
			end

			def letter(int_lettetIndex)
			return Sprite.new
			end




			def setAdditionalKerning(float_space)
			
			end

				def additionalKerning=(float_space)
				end




			def getSystemFontSize()
			
			end

			def systemFontSize()
			
			end




			def getTextAlignment()
			
			end

			def textAlignment()
			
			end




			def getBMFontFilePath()
			
			end

			def bMFontFilePath()
			
			end




			def setHorizontalAlignment(texthalignment_hAlignment)
			
			end

				def horizontalAlignment=(texthalignment_hAlignment)
				end
    
		
			def setAlignment(texthalignment_hAlignment, textvalignment_vAlignment=nil)
			
			end			
    
		
			#def setAlignment(texthalignment_hAlignment)
			#
			#end			





			def requestSystemFontRefresh()
			
			end





			def self.createWithBMFont(str_bmfontFilePath,str_text,texthalignment_alignment,int_maxLineWidth,vec2_imageOffset)
			return Label.new
			end





			def self.create()
			return Label.new
			end

    
		
			def self.createWithCharMap(texture2d_texture, int_itemWidth=nil, int_itemHeight=nil, int_startCharMap=nil)
			return Label.new
			end			
    
		
			#def self.createWithCharMap(str_texture, int_itemWidth=nil, int_itemHeight=nil, int_startCharMap=nil)
			#return Label.new
			#end			
    
		
			#def self.createWithCharMap(str_texture)
			#return Label.new
			#end			





			def self.createWithSystemFont(str_text,str_font,float_fontSize,size_dimensions,texthalignment_hAlignment,textvalignment_vAlignment)
			return Label.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end





			def addChild(node_child,int_zOrder,int_tag)
			
			end





			def setScaleY(float_scaleY)
			
			end

				def scaleY=(float_scaleY)
				end




			def setScaleX(float_scaleX)
			
			end

				def scaleX=(float_scaleX)
				end




			def isOpacityModifyRGB()
			
			end





			def getScaleY()
			
			end

			def scaleY()
			
			end




			def setBlendFunc(blendfunc_blendFunc)
			
			end

				def blendFunc=(blendfunc_blendFunc)
				end




			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end





			def getScaleX()
			
			end

			def scaleX()
			
			end




			def getDescription()
			
			end

			def description()
			
			end




			def setOpacityModifyRGB(bool_isOpacityModifyRGB)
			
			end

				def opacityModifyRGB=(bool_isOpacityModifyRGB)
				end




			def setScale(float_scale)
			
			end

				def scale=(float_scale)
				end




			def sortAllChildren()
			
			end





			def updateDisplayedOpacity(char_parentOpacity)
			
			end





			def getContentSize()
			
			end

			def contentSize()
			
			end




			def getBoundingBox()
			
			end

			def boundingBox()
			
			end




			def updateDisplayedColor(color3b_parentColor)
			
			end

	end
end
module CC
	class LabelAtlas  < AtlasNode





			def setString(str_label)
			
			end

				def string=(str_label)
				end
    
		
			#def initWithString(str_string, str_charMapFile)
			#
			#end			
    
		
			def initWithString(str_string, str_charMapFile, int_itemWidth=nil, int_itemHeight=nil, int_startCharMap=nil)
			
			end			
    
		
			#def initWithString(str_string, texture2d_charMapFile, int_itemWidth=nil, int_itemHeight=nil, int_startCharMap=nil)
			#
			#end			





			def updateAtlasValues()
			
			end





			def getString()
			
			end

			def string()
			
			end
    
		
			def self.create(str_string=nil, str_charMapFile=nil, int_itemWidth=nil, int_itemHeight=nil, int_startCharMap=nil)
			return LabelAtlas.new
			end			
    
		
			#def self.create()
			#return LabelAtlas.new
			#end			
    
		
			#def self.create(str_string=nil, str_charMapFile=nil)
			#return LabelAtlas.new
			#end			





			def getDescription()
			
			end

			def description()
			
			end
	end
end
module CC
	class LayerVirtual  < Node





			def self.create()
			return Layer.new
			end





			def getDescription()
			
			end

			def description()
			
			end
	end
end
module CC
	class LayerColor  < Layer





			def changeWidthAndHeight(float_w,float_h)
			
			end





			def changeHeight(float_h)
			
			end





			def changeWidth(float_w)
			
			end

    
		
			def self.create(color4b_color=nil, float_width=nil, float_height=nil)
			return LayerColor.new
			end			
    
		
			#def self.create()
			#return LayerColor.new
			#end			
    
		
			#def self.create(color4b_color=nil)
			#return LayerColor.new
			#end			





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end





			def getDescription()
			
			end

			def description()
			
			end




			def setContentSize(size_var)
			
			end

				def contentSize=(size_var)
				end
	end
end
module CC
	class LayerGradient  < LayerColor





			def getStartColor()
			
			end

			def startColor()
			
			end




			def isCompressedInterpolation()
			
			end





			def getStartOpacity()
			
			end

			def startOpacity()
			
			end




			def setVector(vec2_alongVector)
			
			end

				def vector=(vec2_alongVector)
				end




			def setStartOpacity(char_startOpacity)
			
			end

				def startOpacity=(char_startOpacity)
				end




			def setCompressedInterpolation(bool_compressedInterpolation)
			
			end

				def compressedInterpolation=(bool_compressedInterpolation)
				end




			def setEndOpacity(char_endOpacity)
			
			end

				def endOpacity=(char_endOpacity)
				end




			def getVector()
			
			end

			def vector()
			
			end




			def setEndColor(color3b_endColor)
			
			end

				def endColor=(color3b_endColor)
				end




			def getEndColor()
			
			end

			def endColor()
			
			end




			def getEndOpacity()
			
			end

			def endOpacity()
			
			end




			def setStartColor(color3b_startColor)
			
			end

				def startColor=(color3b_startColor)
				end
    
		
			#def self.create(color4b_start=nil, color4b_end=nil)
			#return LayerGradient.new
			#end			
    
		
			#def self.create()
			#return LayerGradient.new
			#end			
    
		
			def self.create(color4b_start=nil, color4b_end=nil, vec2_v=nil)
			return LayerGradient.new
			end			





			def getDescription()
			
			end

			def description()
			
			end
	end
end
module CC
	class LayerMultiplex  < Layer





			def switchToAndReleaseMe(int_n)
			
			end





			def addLayer(layer_layer)
			
			end





			def switchTo(int_n)
			
			end





			def getDescription()
			
			end

			def description()
			
			end
	end
end
module CC
	class Lens3D  < Grid3DAction





			def setPosition(vec2_position)
			
			end

				def position=(vec2_position)
				end




			def setConcave(bool_concave)
			
			end

				def concave=(bool_concave)
				end




			def setLensEffect(float_lensEffect)
			
			end

				def lensEffect=(float_lensEffect)
				end




			def getPosition()
			
			end

			def position()
			
			end




			def getLensEffect()
			
			end

			def lensEffect()
			
			end




			def self.create(float_duration,size_gridSize,vec2_position,float_radius)
			return Lens3D.new
			end





			def clone()
			return Lens3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Liquid  < Grid3DAction





			def getAmplitudeRate()
			
			end

			def amplitudeRate()
			
			end




			def setAmplitude(float_amplitude)
			
			end

				def amplitude=(float_amplitude)
				end




			def setAmplitudeRate(float_amplitudeRate)
			
			end

				def amplitudeRate=(float_amplitudeRate)
				end




			def getAmplitude()
			
			end

			def amplitude()
			
			end




			def self.create(float_duration,size_gridSize,int_waves,float_amplitude)
			return Liquid.new
			end





			def clone()
			return Liquid.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Menu  < Layer





			def setEnabled(bool_value)
			
			end

				def enabled=(bool_value)
				end




			def alignItemsVertically()
			
			end





			def isEnabled()
			
			end





			def alignItemsHorizontally()
			
			end





			def alignItemsHorizontallyWithPadding(float_padding)
			
			end





			def alignItemsVerticallyWithPadding(float_padding)
			
			end

    
		
			#def addChild(node_child, int_zOrder=nil)
			#
			#end			
    
		
			#def addChild(node_child)
			#
			#end			
    
		
			def addChild(node_child, int_zOrder=nil, int_tag=nil)
			
			end			
    
		
			#def addChild(node_child, int_zOrder=nil, str_tag=nil)
			#
			#end			





			def isOpacityModifyRGB()
			
			end





			def getDescription()
			
			end

			def description()
			
			end




			def setOpacityModifyRGB(bool_bValue)
			
			end

				def opacityModifyRGB=(bool_bValue)
				end




			def removeChild(node_child,bool_cleanup)
			
			end

	end
end
module CC
	class MenuItem  < Node





			def setEnabled(bool_value)
			
			end

				def enabled=(bool_value)
				end




			def activate()
			
			end





			def isEnabled()
			
			end





			def selected()
			
			end





			def isSelected()
			
			end





			def unselected()
			
			end





			def rect()
			
			end





			def getDescription()
			
			end

			def description()
			
			end
	end
end
module CC
	class MenuItemAtlasFont  < MenuItemLabel

	end
end
module CC
	class MenuItemFont  < MenuItemLabel





			def getFontSizeObj()
			
			end

			def fontSizeObj()
			
			end




			def getFontNameObj()
			
			end

			def fontNameObj()
			
			end




			def setFontSizeObj(int_size)
			
			end

				def fontSizeObj=(int_size)
				end




			def setFontNameObj(str_name)
			
			end

				def fontNameObj=(str_name)
				end




			def self.setFontName(str_name)
			
			end

				def self.fontName=(str_name)
				end




			def self.getFontSize()
			
			end

			def self.fontSize()
			
			end




			def self.getFontName()
			
			end

			def self.fontName()
			
			end




			def self.setFontSize(int_size)
			
			end

				def self.fontSize=(int_size)
				end
	end
end
module CC
	class MenuItemImage  < MenuItemSprite





			def setDisabledSpriteFrame(spriteframe_frame)
			
			end

				def disabledSpriteFrame=(spriteframe_frame)
				end




			def setSelectedSpriteFrame(spriteframe_frame)
			
			end

				def selectedSpriteFrame=(spriteframe_frame)
				end




			def setNormalSpriteFrame(spriteframe_frame)
			
			end

				def normalSpriteFrame=(spriteframe_frame)
				end
	end
end
module CC
	class MenuItemLabel  < MenuItem





			def getDisabledColor()
			
			end

			def disabledColor()
			
			end




			def setString(str_label)
			
			end

				def string=(str_label)
				end




			def setLabel(node_node)
			
			end

				def label=(node_node)
				end




			def setDisabledColor(color3b_color)
			
			end

				def disabledColor=(color3b_color)
				end




			def getLabel()
			return Node.new
			end

			def label()
			return Node.new
			end




			def setEnabled(bool_enabled)
			
			end

				def enabled=(bool_enabled)
				end




			def activate()
			
			end





			def unselected()
			
			end





			def selected()
			
			end

	end
end
module CC
	class MenuItemSprite  < MenuItem





			def setEnabled(bool_bEnabled)
			
			end

				def enabled=(bool_bEnabled)
				end




			def selected()
			
			end





			def setNormalImage(node_image)
			
			end

				def normalImage=(node_image)
				end




			def setDisabledImage(node_image)
			
			end

				def disabledImage=(node_image)
				end




			def setSelectedImage(node_image)
			
			end

				def selectedImage=(node_image)
				end




			def getDisabledImage()
			return Node.new
			end

			def disabledImage()
			return Node.new
			end




			def getSelectedImage()
			return Node.new
			end

			def selectedImage()
			return Node.new
			end




			def getNormalImage()
			return Node.new
			end

			def normalImage()
			return Node.new
			end




			def unselected()
			
			end

	end
end
module CC
	class MenuItemToggle  < MenuItem





			def setSubItems(array_items)
			
			end

				def subItems=(array_items)
				end




			def getSelectedIndex()
			
			end

			def selectedIndex()
			
			end




			def addSubItem(menuitem_item)
			
			end





			def getSelectedItem()
			return MenuItem.new
			end

			def selectedItem()
			return MenuItem.new
			end




			def setSelectedIndex(int_index)
			
			end

				def selectedIndex=(int_index)
				end




			def setEnabled(bool_var)
			
			end

				def enabled=(bool_var)
				end




			def activate()
			
			end





			def unselected()
			
			end





			def selected()
			
			end

	end
end
module CC
	class MotionStreak  < Node





			def reset()
			
			end





			def setTexture(texture2d_texture)
			
			end

				def texture=(texture2d_texture)
				end




			def getTexture()
			return Texture2D.new
			end

			def texture()
			return Texture2D.new
			end




			def tintWithColor(color3b_colors)
			
			end





			def setStartingPositionInitialized(bool_bStartingPositionInitialized)
			
			end

				def startingPositionInitialized=(bool_bStartingPositionInitialized)
				end




			def isStartingPositionInitialized()
			
			end





			def isFastMode()
			
			end





			def setFastMode(bool_bFastMode)
			
			end

				def fastMode=(bool_bFastMode)
				end
    
		
			def self.create(float_fade, float_minSeg, float_stroke, color3b_color, texture2d_texture)
			return MotionStreak.new
			end			
    
		
			#def self.create(float_fade, float_minSeg, float_stroke, color3b_color, str_texture)
			#return MotionStreak.new
			#end			





			def isOpacityModifyRGB()
			
			end





			def setPositionY(float_y)
			
			end

				def positionY=(float_y)
				end




			def setPositionX(float_x)
			
			end

				def positionX=(float_x)
				end




			def getPositionY()
			
			end

			def positionY()
			
			end




			def getPositionX()
			
			end

			def positionX()
			
			end




			def setOpacity(char_opacity)
			
			end

				def opacity=(char_opacity)
				end




			def setOpacityModifyRGB(bool_value)
			
			end

				def opacityModifyRGB=(bool_value)
				end




			def getOpacity()
			
			end

			def opacity()
			
			end
    
		
			def setPosition(float_x, float_y=nil)
			
			end			
    
		
			#def setPosition(vec2_x)
			#
			#end			

    
		
			def getPosition(float_x=nil, float_y=nil)
			
			end			
    
		
			#def getPosition()
			#
			#end			

	end
end
module CC
	class MoveBy  < ActionInterval





			def self.create(float_duration,vec2_deltaPosition)
			return MoveBy.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return MoveBy.new
			end





			def reverse()
			return MoveBy.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class MoveTo  < MoveBy





			def self.create(float_duration,vec2_position)
			return MoveTo.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return MoveTo.new
			end

	end
end
module CC
	class Node  < Ref

    
		
			#def addChild(node_child, int_localZOrder=nil)
			#
			#end			
    
		
			#def addChild(node_child)
			#
			#end			
    
		
			def addChild(node_child, int_localZOrder=nil, int_tag=nil)
			
			end			
    
		
			#def addChild(node_child, int_localZOrder=nil, str_tag=nil)
			#
			#end			

    
		
			def removeComponent(component_component)
			
			end			
    
		
			#def removeComponent(str_component)
			#
			#end			





			def setPhysicsBody(physicsbody_body)
			
			end

				def physicsBody=(physicsbody_body)
				end




			def getDescription()
			
			end

			def description()
			
			end




			def setRotationSkewY(float_rotationY)
			
			end

				def rotationSkewY=(float_rotationY)
				end




			def setOpacityModifyRGB(bool_value)
			
			end

				def opacityModifyRGB=(bool_value)
				end




			def setCascadeOpacityEnabled(bool_cascadeOpacityEnabled)
			
			end

				def cascadeOpacityEnabled=(bool_cascadeOpacityEnabled)
				end
    
		
			#def getChildren()
			#
			#end			
    
		
			#def getChildren()
			#
			#end			





			def setOnExitCallback(func_callback)
			
			end

				def onExitCallback=(func_callback)
				end




			def pause()
			
			end





			def convertToWorldSpaceAR(vec2_nodePoint)
			
			end





			def isIgnoreAnchorPointForPosition()
			
			end





			def getChildByName(str_name)
			return Node.new
			end

			def childByName(str_name)
			return Node.new
			end




			def updateDisplayedOpacity(char_parentOpacity)
			
			end





			def getCameraMask()
			
			end

			def cameraMask()
			
			end




			def setRotation(float_rotation)
			
			end

				def rotation=(float_rotation)
				end




			def setScaleZ(float_scaleZ)
			
			end

				def scaleZ=(float_scaleZ)
				end




			def setScaleY(float_scaleY)
			
			end

				def scaleY=(float_scaleY)
				end




			def setScaleX(float_scaleX)
			
			end

				def scaleX=(float_scaleX)
				end




			def setRotationSkewX(float_rotationX)
			
			end

				def rotationSkewX=(float_rotationX)
				end




			def setonEnterTransitionDidFinishCallback(func_callback)
			
			end

				def onEnterTransitionDidFinishCallback=(func_callback)
				end




			def removeFromPhysicsWorld()
			
			end





			def removeAllComponents()
			
			end





			def getOpacity()
			
			end

			def opacity()
			
			end




			def setCameraMask(short_mask,bool_applyChildren)
			
			end

				def cameraMask=(short_mask,bool_applyChildren)
				end




			def getTag()
			
			end

			def tag()
			
			end




			def getGLProgram()
			return GLProgram.new
			end

			def gLProgram()
			return GLProgram.new
			end




			def getNodeToWorldTransform()
			
			end

			def nodeToWorldTransform()
			
			end




			def getPosition3D()
			
			end

			def position3D()
			
			end




			def removeChild(node_child,bool_cleanup)
			
			end





			def convertToWorldSpace(vec2_nodePoint)
			
			end





			def getScene()
			return Scene.new
			end

			def scene()
			return Scene.new
			end




			def getEventDispatcher()
			return EventDispatcher.new
			end

			def eventDispatcher()
			return EventDispatcher.new
			end




			def setSkewX(float_skewX)
			
			end

				def skewX=(float_skewX)
				end




			def setGLProgramState(glprogramstate_glProgramState)
			
			end

				def gLProgramState=(glprogramstate_glProgramState)
				end




			def setOnEnterCallback(func_callback)
			
			end

				def onEnterCallback=(func_callback)
				end




			def setNormalizedPosition(vec2_position)
			
			end

				def normalizedPosition=(vec2_position)
				end




			def setonExitTransitionDidStartCallback(func_callback)
			
			end

				def onExitTransitionDidStartCallback=(func_callback)
				end




			def convertTouchToNodeSpace(touch_touch)
			
			end

    
		
			def removeAllChildrenWithCleanup(bool_cleanup=nil)
			
			end			
    
		
			#def removeAllChildrenWithCleanup()
			#
			#end			





			def getNodeToParentAffineTransform()
			
			end

			def nodeToParentAffineTransform()
			
			end




			def isCascadeOpacityEnabled()
			
			end





			def setParent(node_parent)
			
			end

				def parent=(node_parent)
				end




			def getName()
			
			end

			def name()
			
			end




			def resume()
			
			end





			def getRotation3D()
			
			end

			def rotation3D()
			
			end




			def getNodeToParentTransform()
			
			end

			def nodeToParentTransform()
			
			end




			def convertTouchToNodeSpaceAR(touch_touch)
			
			end





			def convertToNodeSpace(vec2_worldPoint)
			
			end





			def getPhysicsBody()
			return PhysicsBody.new
			end

			def physicsBody()
			return PhysicsBody.new
			end
    
		
			def setPosition(float_x, float_y=nil)
			
			end			
    
		
			#def setPosition(vec2_x)
			#
			#end			





			def stopActionByTag(int_tag)
			
			end





			def reorderChild(node_child,int_localZOrder)
			
			end





			def ignoreAnchorPointForPosition(bool_ignore)
			
			end





			def setSkewY(float_skewY)
			
			end

				def skewY=(float_skewY)
				end




			def setPositionZ(float_positionZ)
			
			end

				def positionZ=(float_positionZ)
				end




			def setRotation3D(vec3_rotation)
			
			end

				def rotation3D=(vec3_rotation)
				end




			def setPositionX(float_x)
			
			end

				def positionX=(float_x)
				end




			def setNodeToParentTransform(mat4_transform)
			
			end

				def nodeToParentTransform=(mat4_transform)
				end




			def getAnchorPoint()
			
			end

			def anchorPoint()
			
			end




			def getNumberOfRunningActions()
			
			end

			def numberOfRunningActions()
			
			end




			def updateTransform()
			
			end





			def isVisible()
			
			end





			def getChildrenCount()
			
			end

			def childrenCount()
			
			end




			def setAnchorPoint(vec2_anchorPoint)
			
			end

				def anchorPoint=(vec2_anchorPoint)
				end




			def convertToNodeSpaceAR(vec2_worldPoint)
			
			end





			def addComponent(component_component)
			
			end





			def runAction(action_action)
			return Action.new
			end





			def isOpacityModifyRGB()
			
			end





			def getRotation()
			
			end

			def rotation()
			
			end




			def getAnchorPointInPoints()
			
			end

			def anchorPointInPoints()
			
			end
    
		
			#def visit()
			#
			#end			
    
		
			def visit(renderer_renderer=nil, mat4_parentTransform=nil, int_parentFlags=nil)
			
			end			





			def removeChildByName(str_name,bool_cleanup)
			
			end





			def getGLProgramState()
			return GLProgramState.new
			end

			def gLProgramState()
			return GLProgramState.new
			end




			def setScheduler(scheduler_scheduler)
			
			end

				def scheduler=(scheduler_scheduler)
				end




			def stopAllActions()
			
			end





			def getSkewX()
			
			end

			def skewX()
			
			end




			def getSkewY()
			
			end

			def skewY()
			
			end




			def getDisplayedColor()
			
			end

			def displayedColor()
			
			end




			def getActionByTag(int_tag)
			return Action.new
			end

			def actionByTag(int_tag)
			return Action.new
			end




			def setName(str_name)
			
			end

				def name=(str_name)
				end




			def getDisplayedOpacity()
			
			end

			def displayedOpacity()
			
			end




			def getLocalZOrder()
			
			end

			def localZOrder()
			
			end
    
		
			#def getScheduler()
			#
			#end			
    
		
			#def getScheduler()
			#return Scheduler.new
			#end			





			def getParentToNodeAffineTransform()
			
			end

			def parentToNodeAffineTransform()
			
			end




			def getOrderOfArrival()
			
			end

			def orderOfArrival()
			
			end




			def setContentSize(size_contentSize)
			
			end

				def contentSize=(size_contentSize)
				end




			def setActionManager(actionmanager_actionManager)
			
			end

				def actionManager=(actionmanager_actionManager)
				end
    
		
			def getPosition(float_x=nil, float_y=nil)
			
			end			
    
		
			#def getPosition()
			#
			#end			





			def setColor(color3b_color)
			
			end

				def color=(color3b_color)
				end




			def isRunning()
			
			end

    
		
			#def getParent()
			#
			#end			
    
		
			#def getParent()
			#return Node.new
			#end			





			def getPositionZ()
			
			end

			def positionZ()
			
			end




			def getPositionY()
			
			end

			def positionY()
			
			end




			def getPositionX()
			
			end

			def positionX()
			
			end




			def removeChildByTag(int_tag,bool_cleanup)
			
			end





			def setPositionY(float_y)
			
			end

				def positionY=(float_y)
				end




			def getNodeToWorldAffineTransform()
			
			end

			def nodeToWorldAffineTransform()
			
			end




			def updateDisplayedColor(color3b_parentColor)
			
			end





			def setVisible(bool_visible)
			
			end

				def visible=(bool_visible)
				end




			def getParentToNodeTransform()
			
			end

			def parentToNodeTransform()
			
			end




			def isScheduled(str_key)
			
			end





			def setGlobalZOrder(float_globalZOrder)
			
			end

				def globalZOrder=(float_globalZOrder)
				end
    
		
			def setScale(float_scaleX, float_scaleY=nil)
			
			end			
    
		
			#def setScale(float_scaleX)
			#
			#end			





			def getChildByTag(int_tag)
			return Node.new
			end

			def childByTag(int_tag)
			return Node.new
			end




			def setOrderOfArrival(int_orderOfArrival)
			
			end

				def orderOfArrival=(int_orderOfArrival)
				end




			def getScaleZ()
			
			end

			def scaleZ()
			
			end




			def getScaleY()
			
			end

			def scaleY()
			
			end




			def getScaleX()
			
			end

			def scaleX()
			
			end




			def setLocalZOrder(int_localZOrder)
			
			end

				def localZOrder=(int_localZOrder)
				end




			def getWorldToNodeAffineTransform()
			
			end

			def worldToNodeAffineTransform()
			
			end




			def setCascadeColorEnabled(bool_cascadeColorEnabled)
			
			end

				def cascadeColorEnabled=(bool_cascadeColorEnabled)
				end




			def setOpacity(char_opacity)
			
			end

				def opacity=(char_opacity)
				end




			def cleanup()
			
			end





			def getComponent(str_name)
			return Component.new
			end

			def component(str_name)
			return Component.new
			end




			def getContentSize()
			
			end

			def contentSize()
			
			end




			def stopAllActionsByTag(int_tag)
			
			end





			def getColor()
			
			end

			def color()
			
			end




			def getBoundingBox()
			
			end

			def boundingBox()
			
			end




			def setEventDispatcher(eventdispatcher_dispatcher)
			
			end

				def eventDispatcher=(eventdispatcher_dispatcher)
				end




			def getGlobalZOrder()
			
			end

			def globalZOrder()
			
			end
    
		
			#def draw()
			#
			#end			
    
		
			def draw(renderer_renderer=nil, mat4_transform=nil, int_flags=nil)
			
			end			





			def setUserObject(ref_userObject)
			
			end

				def userObject=(ref_userObject)
				end
    
		
			def removeFromParentAndCleanup(bool_cleanup=nil)
			
			end			
    
		
			#def removeFromParentAndCleanup()
			#
			#end			





			def setPosition3D(vec3_position)
			
			end

				def position3D=(vec3_position)
				end




			def update(float_delta)
			
			end





			def sortAllChildren()
			
			end





			def getWorldToNodeTransform()
			
			end

			def worldToNodeTransform()
			
			end




			def setGLProgram(glprogram_glprogram)
			
			end

				def gLProgram=(glprogram_glprogram)
				end




			def getScale()
			
			end

			def scale()
			
			end




			def getNormalizedPosition()
			
			end

			def normalizedPosition()
			
			end




			def getRotationSkewX()
			
			end

			def rotationSkewX()
			
			end




			def getRotationSkewY()
			
			end

			def rotationSkewY()
			
			end




			def setTag(int_tag)
			
			end

				def tag=(int_tag)
				end




			def isCascadeColorEnabled()
			
			end





			def stopAction(action_action)
			
			end

    
		
			#def getActionManager()
			#
			#end			
    
		
			#def getActionManager()
			#return ActionManager.new
			#end			





			def self.create()
			return Node.new
			end

	end
end
module CC
	class NodeGrid  < Node





			def setTarget(node_target)
			
			end

				def target=(node_target)
				end
    
		
			#def getGrid()
			#
			#end			
    
		
			#def getGrid()
			#return GridBase.new
			#end			





			def setGrid(gridbase_grid)
			
			end

				def grid=(gridbase_grid)
				end




			def self.create()
			return NodeGrid.new
			end





			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end

	end
end
module CC
	class OrbitCamera  < ActionCamera





			def self.create(float_t,float_radius,float_deltaRadius,float_angleZ,float_deltaAngleZ,float_angleX,float_deltaAngleX)
			return OrbitCamera.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return OrbitCamera.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class PageTurn3D  < Grid3DAction





			def getGrid()
			return GridBase.new
			end

			def grid()
			return GridBase.new
			end




			def self.create(float_duration,size_gridSize)
			return PageTurn3D.new
			end





			def clone()
			return PageTurn3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ParallaxNode  < Node





			def addChild(node_child,int_z,vec2_parallaxRatio,vec2_positionOffset)
			
			end





			def removeAllChildrenWithCleanup(bool_cleanup)
			
			end





			def self.create()
			return ParallaxNode.new
			end

    
		
			def addChild(node_child, int_zOrder, str_name)
			
			end			
    
		
			#def addChild(node_child, int_zOrder, int_name)
			#
			#end			





			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end





			def removeChild(node_child,bool_cleanup)
			
			end

	end
end
module CC
	class ParticleBatchNode  < Node





			def setTexture(texture2d_texture)
			
			end

				def texture=(texture2d_texture)
				end




			def disableParticle(int_particleIndex)
			
			end





			def getTexture()
			return Texture2D.new
			end

			def texture()
			return Texture2D.new
			end




			def setTextureAtlas(textureatlas_atlas)
			
			end

				def textureAtlas=(textureatlas_atlas)
				end




			def removeAllChildrenWithCleanup(bool_doCleanup)
			
			end





			def getTextureAtlas()
			return TextureAtlas.new
			end

			def textureAtlas()
			return TextureAtlas.new
			end




			def insertChild(particlesystem_system,int_index)
			
			end





			def removeChildAtIndex(int_index,bool_doCleanup)
			
			end





			def self.create(str_fileImage,int_capacity)
			return ParticleBatchNode.new
			end





			def self.createWithTexture(texture2d_tex,int_capacity)
			return ParticleBatchNode.new
			end

    
		
			def addChild(node_child, int_zOrder, str_name)
			
			end			
    
		
			#def addChild(node_child, int_zOrder, int_name)
			#
			#end			





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end





			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end





			def reorderChild(node_child,int_zOrder)
			
			end





			def removeChild(node_child,bool_cleanup)
			
			end

	end
end
module CC
	class ParticleExplosion  < ParticleSystemQuad





			def self.create()
			return ParticleExplosion.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleExplosion.new
			end

	end
end
module CC
	class ParticleFire  < ParticleSystemQuad





			def self.create()
			return ParticleFire.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleFire.new
			end

	end
end
module CC
	class ParticleFireworks  < ParticleSystemQuad





			def self.create()
			return ParticleFireworks.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleFireworks.new
			end

	end
end
module CC
	class ParticleFlower  < ParticleSystemQuad





			def self.create()
			return ParticleFlower.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleFlower.new
			end

	end
end
module CC
	class ParticleGalaxy  < ParticleSystemQuad





			def self.create()
			return ParticleGalaxy.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleGalaxy.new
			end

	end
end
module CC
	class ParticleMeteor  < ParticleSystemQuad





			def self.create()
			return ParticleMeteor.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleMeteor.new
			end

	end
end
module CC
	class ParticleRain  < ParticleSystemQuad





			def self.create()
			return ParticleRain.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleRain.new
			end

	end
end
module CC
	class ParticleSmoke  < ParticleSystemQuad





			def self.create()
			return ParticleSmoke.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleSmoke.new
			end

	end
end
module CC
	class ParticleSnow  < ParticleSystemQuad





			def self.create()
			return ParticleSnow.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleSnow.new
			end

	end
end
module CC
	class ParticleSpiral  < ParticleSystemQuad





			def self.create()
			return ParticleSpiral.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleSpiral.new
			end

	end
end
module CC
	class ParticleSun  < ParticleSystemQuad





			def self.create()
			return ParticleSun.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleSun.new
			end

	end
end
module CC
	class ParticleSystem  < Node





			def getStartSizeVar()
			
			end

			def startSizeVar()
			
			end




			def getTexture()
			return Texture2D.new
			end

			def texture()
			return Texture2D.new
			end




			def isFull()
			
			end





			def getBatchNode()
			return ParticleBatchNode.new
			end

			def batchNode()
			return ParticleBatchNode.new
			end




			def getStartColor()
			
			end

			def startColor()
			
			end




			def getPositionType()
			
			end

			def positionType()
			
			end




			def setPosVar(vec2_pos)
			
			end

				def posVar=(vec2_pos)
				end




			def getEndSpin()
			
			end

			def endSpin()
			
			end




			def setRotatePerSecondVar(float_degrees)
			
			end

				def rotatePerSecondVar=(float_degrees)
				end




			def getStartSpinVar()
			
			end

			def startSpinVar()
			
			end




			def getRadialAccelVar()
			
			end

			def radialAccelVar()
			
			end




			def getEndSizeVar()
			
			end

			def endSizeVar()
			
			end




			def setRotation(float_newRotation)
			
			end

				def rotation=(float_newRotation)
				end




			def setTangentialAccel(float_t)
			
			end

				def tangentialAccel=(float_t)
				end




			def setScaleY(float_newScaleY)
			
			end

				def scaleY=(float_newScaleY)
				end




			def setScaleX(float_newScaleX)
			
			end

				def scaleX=(float_newScaleX)
				end




			def getRadialAccel()
			
			end

			def radialAccel()
			
			end




			def setStartRadius(float_startRadius)
			
			end

				def startRadius=(float_startRadius)
				end




			def setRotatePerSecond(float_degrees)
			
			end

				def rotatePerSecond=(float_degrees)
				end




			def setEndSize(float_endSize)
			
			end

				def endSize=(float_endSize)
				end




			def getGravity()
			
			end

			def gravity()
			
			end




			def getTangentialAccel()
			
			end

			def tangentialAccel()
			
			end




			def setEndRadius(float_endRadius)
			
			end

				def endRadius=(float_endRadius)
				end




			def getSpeed()
			
			end

			def speed()
			
			end




			def getAngle()
			
			end

			def angle()
			
			end




			def setEndColor(color4f_color)
			
			end

				def endColor=(color4f_color)
				end




			def setStartSpin(float_spin)
			
			end

				def startSpin=(float_spin)
				end




			def setDuration(float_duration)
			
			end

				def duration=(float_duration)
				end




			def setTexture(texture2d_texture)
			
			end

				def texture=(texture2d_texture)
				end




			def getPosVar()
			
			end

			def posVar()
			
			end




			def updateWithNoTime()
			
			end





			def isBlendAdditive()
			
			end





			def getSpeedVar()
			
			end

			def speedVar()
			
			end




			def setPositionType(positiontype_type)
			
			end

				def positionType=(positiontype_type)
				end




			def stopSystem()
			
			end





			def getSourcePosition()
			
			end

			def sourcePosition()
			
			end




			def setLifeVar(float_lifeVar)
			
			end

				def lifeVar=(float_lifeVar)
				end




			def setTotalParticles(int_totalParticles)
			
			end

				def totalParticles=(int_totalParticles)
				end




			def setEndColorVar(color4f_color)
			
			end

				def endColorVar=(color4f_color)
				end




			def getAtlasIndex()
			
			end

			def atlasIndex()
			
			end




			def getStartSize()
			
			end

			def startSize()
			
			end




			def setStartSpinVar(float_pinVar)
			
			end

				def startSpinVar=(float_pinVar)
				end




			def resetSystem()
			
			end





			def setAtlasIndex(int_index)
			
			end

				def atlasIndex=(int_index)
				end




			def setTangentialAccelVar(float_t)
			
			end

				def tangentialAccelVar=(float_t)
				end




			def setEndRadiusVar(float_endRadiusVar)
			
			end

				def endRadiusVar=(float_endRadiusVar)
				end




			def getEndRadius()
			
			end

			def endRadius()
			
			end




			def isOpacityModifyRGB()
			
			end





			def isActive()
			
			end





			def setRadialAccelVar(float_t)
			
			end

				def radialAccelVar=(float_t)
				end




			def setStartSize(float_startSize)
			
			end

				def startSize=(float_startSize)
				end




			def setSpeed(float_speed)
			
			end

				def speed=(float_speed)
				end




			def getStartSpin()
			
			end

			def startSpin()
			
			end




			def getRotatePerSecond()
			
			end

			def rotatePerSecond()
			
			end




			def setEmitterMode(mode_mode)
			
			end

				def emitterMode=(mode_mode)
				end




			def getDuration()
			
			end

			def duration()
			
			end




			def setSourcePosition(vec2_pos)
			
			end

				def sourcePosition=(vec2_pos)
				end




			def getEndSpinVar()
			
			end

			def endSpinVar()
			
			end




			def setBlendAdditive(bool_value)
			
			end

				def blendAdditive=(bool_value)
				end




			def setLife(float_life)
			
			end

				def life=(float_life)
				end




			def setAngleVar(float_angleVar)
			
			end

				def angleVar=(float_angleVar)
				end




			def setRotationIsDir(bool_t)
			
			end

				def rotationIsDir=(bool_t)
				end




			def setEndSizeVar(float_sizeVar)
			
			end

				def endSizeVar=(float_sizeVar)
				end




			def setAngle(float_angle)
			
			end

				def angle=(float_angle)
				end




			def setBatchNode(particlebatchnode_batchNode)
			
			end

				def batchNode=(particlebatchnode_batchNode)
				end




			def getTangentialAccelVar()
			
			end

			def tangentialAccelVar()
			
			end




			def getEmitterMode()
			
			end

			def emitterMode()
			
			end




			def setEndSpinVar(float_endSpinVar)
			
			end

				def endSpinVar=(float_endSpinVar)
				end




			def getAngleVar()
			
			end

			def angleVar()
			
			end




			def setStartColor(color4f_color)
			
			end

				def startColor=(color4f_color)
				end




			def getRotatePerSecondVar()
			
			end

			def rotatePerSecondVar()
			
			end




			def getEndSize()
			
			end

			def endSize()
			
			end




			def getLife()
			
			end

			def life()
			
			end




			def setSpeedVar(float_speed)
			
			end

				def speedVar=(float_speed)
				end




			def setAutoRemoveOnFinish(bool_var)
			
			end

				def autoRemoveOnFinish=(bool_var)
				end




			def setGravity(vec2_g)
			
			end

				def gravity=(vec2_g)
				end




			def postStep()
			
			end





			def setEmissionRate(float_rate)
			
			end

				def emissionRate=(float_rate)
				end




			def getEndColorVar()
			
			end

			def endColorVar()
			
			end




			def getRotationIsDir()
			
			end

			def rotationIsDir()
			
			end




			def setScale(float_s)
			
			end

				def scale=(float_s)
				end




			def getEmissionRate()
			
			end

			def emissionRate()
			
			end




			def getEndColor()
			
			end

			def endColor()
			
			end




			def getLifeVar()
			
			end

			def lifeVar()
			
			end




			def setStartSizeVar(float_sizeVar)
			
			end

				def startSizeVar=(float_sizeVar)
				end




			def setOpacityModifyRGB(bool_opacityModifyRGB)
			
			end

				def opacityModifyRGB=(bool_opacityModifyRGB)
				end




			def addParticle()
			
			end





			def getStartRadius()
			
			end

			def startRadius()
			
			end




			def getParticleCount()
			
			end

			def particleCount()
			
			end




			def getStartRadiusVar()
			
			end

			def startRadiusVar()
			
			end




			def setStartColorVar(color4f_color)
			
			end

				def startColorVar=(color4f_color)
				end




			def setEndSpin(float_endSpin)
			
			end

				def endSpin=(float_endSpin)
				end




			def setRadialAccel(float_t)
			
			end

				def radialAccel=(float_t)
				end




			def isAutoRemoveOnFinish()
			
			end





			def getTotalParticles()
			
			end

			def totalParticles()
			
			end




			def setStartRadiusVar(float_startRadiusVar)
			
			end

				def startRadiusVar=(float_startRadiusVar)
				end




			def getEndRadiusVar()
			
			end

			def endRadiusVar()
			
			end




			def getStartColorVar()
			
			end

			def startColorVar()
			
			end




			def self.create(str_plistFile)
			return ParticleSystem.new
			end





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleSystem.new
			end





			def update(float_dt)
			
			end

	end
end
module CC
	class ParticleSystemQuad  < ParticleSystem





			def setDisplayFrame(spriteframe_spriteFrame)
			
			end

				def displayFrame=(spriteframe_spriteFrame)
				end




			def setTextureWithRect(texture2d_texture,rect_rect)
			
			end

				def textureWithRect=(texture2d_texture,rect_rect)
				end




			def listenRendererRecreated(eventcustom_event)
			
			end

    
		
			def self.create(str_filename=nil)
			return ParticleSystemQuad.new
			end			
    
		
			#def self.create()
			#return ParticleSystemQuad.new
			#end			
    
		
			#def self.create(map_filename=nil)
			#return ParticleSystemQuad.new
			#end			





			def self.createWithTotalParticles(int_numberOfParticles)
			return ParticleSystemQuad.new
			end





			def getDescription()
			
			end

			def description()
			
			end
	end
end
module CC
	class Place  < ActionInstant





			def self.create(vec2_pos)
			return Place.new
			end





			def clone()
			return Place.new
			end





			def update(float_time)
			
			end





			def reverse()
			return Place.new
			end

	end
end
module CC
	class PointLight  < BaseLight





			def getRange()
			
			end

			def range()
			
			end




			def setRange(float_range)
			
			end

				def range=(float_range)
				end




			def self.create(vec3_position,color3b_color,float_range)
			return PointLight.new
			end





			def getLightType()
			
			end

			def lightType()
			
			end
	end
end
module CC
	class ProgressFromTo  < ActionInterval





			def self.create(float_duration,float_fromPercentage,float_toPercentage)
			return ProgressFromTo.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return ProgressFromTo.new
			end





			def reverse()
			return ProgressFromTo.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ProgressTimer  < Node





			def isReverseDirection()
			
			end





			def setBarChangeRate(vec2_barChangeRate)
			
			end

				def barChangeRate=(vec2_barChangeRate)
				end




			def getPercentage()
			
			end

			def percentage()
			
			end




			def setSprite(sprite_sprite)
			
			end

				def sprite=(sprite_sprite)
				end




			def getType()
			
			end

			def type()
			
			end




			def getSprite()
			return Sprite.new
			end

			def sprite()
			return Sprite.new
			end




			def setMidpoint(vec2_point)
			
			end

				def midpoint=(vec2_point)
				end




			def getBarChangeRate()
			
			end

			def barChangeRate()
			
			end
    
		
			def setReverseDirection(bool_value)
			
			end			
    
		
			#def setReverseDirection(bool_value)
			#
			#end			





			def getMidpoint()
			
			end

			def midpoint()
			
			end




			def setPercentage(float_percentage)
			
			end

				def percentage=(float_percentage)
				end




			def setType(type_type)
			
			end

				def type=(type_type)
				end




			def self.create(sprite_sp)
			return ProgressTimer.new
			end





			def setAnchorPoint(vec2_anchorPoint)
			
			end

				def anchorPoint=(vec2_anchorPoint)
				end




			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end





			def setColor(color3b_color)
			
			end

				def color=(color3b_color)
				end




			def getColor()
			
			end

			def color()
			
			end




			def setOpacity(char_opacity)
			
			end

				def opacity=(char_opacity)
				end




			def getOpacity()
			
			end

			def opacity()
			
			end
	end
end
module CC
	class ProgressTo  < ActionInterval





			def self.create(float_duration,float_percent)
			return ProgressTo.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return ProgressTo.new
			end





			def reverse()
			return ProgressTo.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ProtectedNode  < Node

    
		
			#def addProtectedChild(node_child, int_localZOrder=nil)
			#
			#end			
    
		
			#def addProtectedChild(node_child)
			#
			#end			
    
		
			def addProtectedChild(node_child, int_localZOrder=nil, int_tag=nil)
			
			end			





			def disableCascadeColor()
			
			end





			def removeProtectedChildByTag(int_tag,bool_cleanup)
			
			end





			def reorderProtectedChild(node_child,int_localZOrder)
			
			end





			def removeAllProtectedChildrenWithCleanup(bool_cleanup)
			
			end





			def disableCascadeOpacity()
			
			end





			def sortAllProtectedChildren()
			
			end





			def getProtectedChildByTag(int_tag)
			return Node.new
			end

			def protectedChildByTag(int_tag)
			return Node.new
			end




			def removeProtectedChild(node_child,bool_cleanup)
			
			end





			def removeAllProtectedChildren()
			
			end





			def self.create()
			return ProtectedNode.new
			end





			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end





			def updateDisplayedOpacity(char_parentOpacity)
			
			end





			def updateDisplayedColor(color3b_parentColor)
			
			end





			def cleanup()
			
			end

	end
end
module CC
	class Ref 





			def release()
			
			end





			def retain()
			
			end





			def getReferenceCount()
			
			end

			def referenceCount()
			
			end
	end
end
module CC
	class RemoveSelf  < ActionInstant





			def self.create()
			return RemoveSelf.new
			end





			def clone()
			return RemoveSelf.new
			end





			def update(float_time)
			
			end





			def reverse()
			return RemoveSelf.new
			end

	end
end
module CC
	class RenderTexture  < Node





			def setVirtualViewport(vec2_rtBegin,rect_fullRect,rect_fullViewport)
			
			end

				def virtualViewport=(vec2_rtBegin,rect_fullRect,rect_fullViewport)
				end




			def clearStencil(int_stencilValue)
			
			end





			def getClearDepth()
			
			end

			def clearDepth()
			
			end




			def getClearStencil()
			
			end

			def clearStencil()
			
			end




			def end()
			
			end





			def setClearStencil(int_clearStencil)
			
			end

				def clearStencil=(int_clearStencil)
				end




			def setSprite(sprite_sprite)
			
			end

				def sprite=(sprite_sprite)
				end




			def getSprite()
			return Sprite.new
			end

			def sprite()
			return Sprite.new
			end




			def isAutoDraw()
			
			end





			def setKeepMatrix(bool_keepMatrix)
			
			end

				def keepMatrix=(bool_keepMatrix)
				end




			def setClearFlags(int_clearFlags)
			
			end

				def clearFlags=(int_clearFlags)
				end




			def begin()
			
			end





			def setAutoDraw(bool_isAutoDraw)
			
			end

				def autoDraw=(bool_isAutoDraw)
				end




			def setClearColor(color4f_clearColor)
			
			end

				def clearColor=(color4f_clearColor)
				end




			def endToLua()
			
			end

    
		
			#def beginWithClear(float_r, float_g, float_b, float_a, float_depthValue=nil)
			#
			#end			
    
		
			#def beginWithClear(float_r, float_g, float_b, float_a)
			#
			#end			
    
		
			def beginWithClear(float_r, float_g, float_b, float_a, float_depthValue=nil, int_stencilValue=nil)
			
			end			





			def clearDepth(float_depthValue)
			
			end





			def getClearColor()
			
			end

			def clearColor()
			
			end




			def clear(float_r,float_g,float_b,float_a)
			
			end





			def getClearFlags()
			
			end

			def clearFlags()
			
			end




			def newImage()
			return Image.new
			end





			def setClearDepth(float_clearDepth)
			
			end

				def clearDepth=(float_clearDepth)
				end
    
		
			def initWithWidthAndHeight(int_w, int_h, pixelformat_format, int_depthStencilFormat=nil)
			
			end			
    
		
			#def initWithWidthAndHeight(int_w, int_h, pixelformat_format)
			#
			#end			

    
		
			#def self.create(int_w, int_h, pixelformat_format=nil)
			#return RenderTexture.new
			#end			
    
		
			def self.create(int_w, int_h, pixelformat_format=nil, int_depthStencilFormat=nil)
			return RenderTexture.new
			end			
    
		
			#def self.create(int_w, int_h)
			#return RenderTexture.new
			#end			





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end





			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end





			def RenderTexture()
			
			end

	end
end
module CC
	class Repeat  < ActionInterval





			def setInnerAction(finitetimeaction_action)
			
			end

				def innerAction=(finitetimeaction_action)
				end




			def getInnerAction()
			return FiniteTimeAction.new
			end

			def innerAction()
			return FiniteTimeAction.new
			end




			def self.create(finitetimeaction_action,int_times)
			return Repeat.new
			end





			def startWithTarget(node_target)
			
			end





			def reverse()
			return Repeat.new
			end





			def clone()
			return Repeat.new
			end





			def stop()
			
			end





			def update(float_dt)
			
			end





			def isDone()
			
			end

	end
end
module CC
	class RepeatForever  < ActionInterval





			def setInnerAction(actioninterval_action)
			
			end

				def innerAction=(actioninterval_action)
				end




			def getInnerAction()
			return ActionInterval.new
			end

			def innerAction()
			return ActionInterval.new
			end




			def self.create(actioninterval_action)
			return RepeatForever.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return RepeatForever.new
			end





			def isDone()
			
			end





			def reverse()
			return RepeatForever.new
			end





			def step(float_dt)
			
			end

	end
end
module CC
	class ReuseGrid  < ActionInstant





			def self.create(int_times)
			return ReuseGrid.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return ReuseGrid.new
			end





			def reverse()
			return ReuseGrid.new
			end

	end
end
module CC
	class Ripple3D  < Grid3DAction





			def setAmplitudeRate(float_fAmplitudeRate)
			
			end

				def amplitudeRate=(float_fAmplitudeRate)
				end




			def getAmplitudeRate()
			
			end

			def amplitudeRate()
			
			end




			def setAmplitude(float_fAmplitude)
			
			end

				def amplitude=(float_fAmplitude)
				end




			def getAmplitude()
			
			end

			def amplitude()
			
			end




			def setPosition(vec2_position)
			
			end

				def position=(vec2_position)
				end




			def getPosition()
			
			end

			def position()
			
			end




			def self.create(float_duration,size_gridSize,vec2_position,float_radius,int_waves,float_amplitude)
			return Ripple3D.new
			end





			def clone()
			return Ripple3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class RotateBy  < ActionInterval

    
		
			def self.create(float_duration, float_deltaAngleZ_X, float_deltaAngleZ_Y=nil)
			return RotateBy.new
			end			
    
		
			#def self.create(float_duration, float_deltaAngleZ_X)
			#return RotateBy.new
			#end			
    
		
			#def self.create(float_duration, vec3_deltaAngleZ_X)
			#return RotateBy.new
			#end			





			def startWithTarget(node_target)
			
			end





			def clone()
			return RotateBy.new
			end





			def reverse()
			return RotateBy.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class RotateTo  < ActionInterval

    
		
			#def self.create(float_duration, float_dstAngleX)
			#return RotateTo.new
			#end			
    
		
			def self.create(float_duration, float_dstAngleX, float_dstAngleY=nil)
			return RotateTo.new
			end			
    
		
			#def self.create(float_duration, vec3_dstAngleX)
			#return RotateTo.new
			#end			





			def startWithTarget(node_target)
			
			end





			def clone()
			return RotateTo.new
			end





			def reverse()
			return RotateTo.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ScaleBy  < ScaleTo

    
		
			#def self.create(float_duration, float_sx, float_sy=nil)
			#return ScaleBy.new
			#end			
    
		
			#def self.create(float_duration, float_sx)
			#return ScaleBy.new
			#end			
    
		
			def self.create(float_duration, float_sx, float_sy=nil, float_sz=nil)
			return ScaleBy.new
			end			





			def startWithTarget(node_target)
			
			end





			def clone()
			return ScaleBy.new
			end





			def reverse()
			return ScaleBy.new
			end

	end
end
module CC
	class ScaleTo  < ActionInterval

    
		
			#def self.create(float_duration, float_sx, float_sy=nil)
			#return ScaleTo.new
			#end			
    
		
			#def self.create(float_duration, float_sx)
			#return ScaleTo.new
			#end			
    
		
			def self.create(float_duration, float_sx, float_sy=nil, float_sz=nil)
			return ScaleTo.new
			end			





			def startWithTarget(node_target)
			
			end





			def clone()
			return ScaleTo.new
			end





			def reverse()
			return ScaleTo.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Scene  < Node





			def render(renderer_renderer)
			
			end





			def self.createWithSize(size_size)
			return Scene.new
			end





			def self.create()
			return Scene.new
			end





			def self.createWithPhysics()
			return Scene.new
			end

    
		
			def addChild(node_child, int_zOrder, str_name)
			
			end			
    
		
			#def addChild(node_child, int_zOrder, int_name)
			#
			#end			





			def getDescription()
			
			end

			def description()
			
			end




			def update(float_delta)
			
			end

	end
end
module CC
	class Scheduler  < Ref





			def setTimeScale(float_timeScale)
			
			end

				def timeScale=(float_timeScale)
				end




			def getTimeScale()
			
			end

			def timeScale()
			
			end




			def Scheduler()
			
			end

	end
end
module CC
	class Sequence  < ActionInterval





			def startWithTarget(node_target)
			
			end





			def clone()
			return Sequence.new
			end





			def stop()
			
			end





			def reverse()
			return Sequence.new
			end





			def update(float_t)
			
			end

	end
end
module CC
	class Shaky3D  < Grid3DAction





			def self.create(float_duration,size_gridSize,int_range,bool_shakeZ)
			return Shaky3D.new
			end





			def clone()
			return Shaky3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ShakyTiles3D  < TiledGrid3DAction





			def self.create(float_duration,size_gridSize,int_range,bool_shakeZ)
			return ShakyTiles3D.new
			end





			def clone()
			return ShakyTiles3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ShatteredTiles3D  < TiledGrid3DAction





			def self.create(float_duration,size_gridSize,int_range,bool_shatterZ)
			return ShatteredTiles3D.new
			end





			def clone()
			return ShatteredTiles3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Show  < ActionInstant





			def self.create()
			return Show.new
			end





			def clone()
			return Show.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ActionInstant.new
			end

	end
end
module CC
	class ShuffleTiles  < TiledGrid3DAction





			def getDelta(size_pos)
			
			end

			def delta(size_pos)
			
			end




			def self.create(float_duration,size_gridSize,int_seed)
			return ShuffleTiles.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return ShuffleTiles.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class SkewBy  < SkewTo





			def self.create(float_t,float_deltaSkewX,float_deltaSkewY)
			return SkewBy.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return SkewBy.new
			end





			def reverse()
			return SkewBy.new
			end

	end
end
module CC
	class SkewTo  < ActionInterval





			def self.create(float_t,float_sx,float_sy)
			return SkewTo.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return SkewTo.new
			end





			def reverse()
			return SkewTo.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Spawn  < ActionInterval





			def startWithTarget(node_target)
			
			end





			def clone()
			return Spawn.new
			end





			def stop()
			
			end





			def reverse()
			return Spawn.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Speed  < Action





			def setInnerAction(actioninterval_action)
			
			end

				def innerAction=(actioninterval_action)
				end




			def setSpeed(float_speed)
			
			end

				def speed=(float_speed)
				end




			def getInnerAction()
			return ActionInterval.new
			end

			def innerAction()
			return ActionInterval.new
			end




			def getSpeed()
			
			end

			def speed()
			
			end




			def self.create(actioninterval_action,float_speed)
			return Speed.new
			end





			def startWithTarget(node_target)
			
			end





			def reverse()
			return Speed.new
			end





			def clone()
			return Speed.new
			end





			def stop()
			
			end





			def step(float_dt)
			
			end





			def isDone()
			
			end

	end
end
module CC
	class SplitCols  < TiledGrid3DAction





			def self.create(float_duration,int_cols)
			return SplitCols.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return SplitCols.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class SplitRows  < TiledGrid3DAction





			def self.create(float_duration,int_rows)
			return SplitRows.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return SplitRows.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class SpotLight  < BaseLight





			def getRange()
			
			end

			def range()
			
			end




			def setDirection(vec3_dir)
			
			end

				def direction=(vec3_dir)
				end




			def getCosInnerAngle()
			
			end

			def cosInnerAngle()
			
			end




			def getOuterAngle()
			
			end

			def outerAngle()
			
			end




			def getInnerAngle()
			
			end

			def innerAngle()
			
			end




			def getDirection()
			
			end

			def direction()
			
			end




			def getCosOuterAngle()
			
			end

			def cosOuterAngle()
			
			end




			def setOuterAngle(float_angle)
			
			end

				def outerAngle=(float_angle)
				end




			def setInnerAngle(float_angle)
			
			end

				def innerAngle=(float_angle)
				end




			def getDirectionInWorld()
			
			end

			def directionInWorld()
			
			end




			def setRange(float_range)
			
			end

				def range=(float_range)
				end




			def self.create(vec3_direction,vec3_position,color3b_color,float_innerAngle,float_outerAngle,float_range)
			return SpotLight.new
			end





			def getLightType()
			
			end

			def lightType()
			
			end
	end
end
module CC
	class Sprite  < Node

    
		
			def setSpriteFrame(spriteframe_newFrame)
			
			end			
    
		
			#def setSpriteFrame(str_newFrame)
			#
			#end			

    
		
			def setTexture(texture2d_texture)
			
			end			
    
		
			#def setTexture(str_texture)
			#
			#end			





			def getTexture()
			return Texture2D.new
			end

			def texture()
			return Texture2D.new
			end




			def setFlippedY(bool_flippedY)
			
			end

				def flippedY=(bool_flippedY)
				end




			def setFlippedX(bool_flippedX)
			
			end

				def flippedX=(bool_flippedX)
				end




			def getBatchNode()
			return SpriteBatchNode.new
			end

			def batchNode()
			return SpriteBatchNode.new
			end




			def getOffsetPosition()
			
			end

			def offsetPosition()
			
			end




			def removeAllChildrenWithCleanup(bool_cleanup)
			
			end





			def updateTransform()
			
			end

    
		
			def setTextureRect(rect_rect, bool_rotated=nil, size_untrimmedSize=nil)
			
			end			
    
		
			#def setTextureRect(rect_rect)
			#
			#end			





			def isFrameDisplayed(spriteframe_pFrame)
			
			end





			def getAtlasIndex()
			
			end

			def atlasIndex()
			
			end




			def setBatchNode(spritebatchnode_spriteBatchNode)
			
			end

				def batchNode=(spritebatchnode_spriteBatchNode)
				end




			def setDisplayFrameWithAnimationName(str_animationName,long_frameIndex)
			
			end

				def displayFrameWithAnimationName=(str_animationName,long_frameIndex)
				end




			def setTextureAtlas(textureatlas_pobTextureAtlas)
			
			end

				def textureAtlas=(textureatlas_pobTextureAtlas)
				end




			def getSpriteFrame()
			return SpriteFrame.new
			end

			def spriteFrame()
			return SpriteFrame.new
			end




			def isDirty()
			
			end





			def setAtlasIndex(long_atlasIndex)
			
			end

				def atlasIndex=(long_atlasIndex)
				end




			def setDirty(bool_dirty)
			
			end

				def dirty=(bool_dirty)
				end




			def isTextureRectRotated()
			
			end





			def getTextureRect()
			
			end

			def textureRect()
			
			end




			def getTextureAtlas()
			return TextureAtlas.new
			end

			def textureAtlas()
			return TextureAtlas.new
			end




			def isFlippedX()
			
			end





			def isFlippedY()
			
			end





			def setVertexRect(rect_rect)
			
			end

				def vertexRect=(rect_rect)
				end
    
		
			#def self.create(str_filename=nil)
			#return Sprite.new
			#end			
    
		
			#def self.create()
			#return Sprite.new
			#end			
    
		
			def self.create(str_filename=nil, rect_rect=nil)
			return Sprite.new
			end			

    
		
			def self.createWithTexture(texture2d_texture, rect_rect=nil, bool_rotated=nil)
			return Sprite.new
			end			
    
		
			#def self.createWithTexture(texture2d_texture)
			#return Sprite.new
			#end			





			def self.createWithSpriteFrameName(str_spriteFrameName)
			return Sprite.new
			end





			def self.createWithSpriteFrame(spriteframe_spriteFrame)
			return Sprite.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end

    
		
			def addChild(node_child, int_zOrder, str_name)
			
			end			
    
		
			#def addChild(node_child, int_zOrder, int_name)
			#
			#end			





			def setScaleY(float_scaleY)
			
			end

				def scaleY=(float_scaleY)
				end




			def setScaleX(float_scaleX)
			
			end

				def scaleX=(float_scaleX)
				end




			def isOpacityModifyRGB()
			
			end





			def setPositionZ(float_positionZ)
			
			end

				def positionZ=(float_positionZ)
				end




			def setAnchorPoint(vec2_anchor)
			
			end

				def anchorPoint=(vec2_anchor)
				end




			def setRotationSkewX(float_rotationX)
			
			end

				def rotationSkewX=(float_rotationX)
				end




			def getDescription()
			
			end

			def description()
			
			end




			def setRotationSkewY(float_rotationY)
			
			end

				def rotationSkewY=(float_rotationY)
				end
    
		
			#def setScale(float_scaleX)
			#
			#end			
    
		
			def setScale(float_scaleX, float_scaleY=nil)
			
			end			





			def reorderChild(node_child,int_zOrder)
			
			end





			def removeChild(node_child,bool_cleanup)
			
			end





			def sortAllChildren()
			
			end





			def setOpacityModifyRGB(bool_modify)
			
			end

				def opacityModifyRGB=(bool_modify)
				end




			def setRotation(float_rotation)
			
			end

				def rotation=(float_rotation)
				end
    
		
			def setPosition(float_x, float_y=nil)
			
			end			
    
		
			#def setPosition(vec2_x)
			#
			#end			





			def setSkewY(float_sy)
			
			end

				def skewY=(float_sy)
				end




			def setVisible(bool_bVisible)
			
			end

				def visible=(bool_bVisible)
				end




			def setSkewX(float_sx)
			
			end

				def skewX=(float_sx)
				end




			def ignoreAnchorPointForPosition(bool_value)
			
			end

	end
end
module CC
	class SpriteBatchNode  < Node





			def appendChild(sprite_sprite)
			
			end





			def addSpriteWithoutQuad(sprite_child,int_z,int_aTag)
			return SpriteBatchNode.new
			end





			def reorderBatch(bool_reorder)
			
			end





			def removeAllChildrenWithCleanup(bool_cleanup)
			
			end





			def lowestAtlasIndexInChild(sprite_sprite)
			
			end





			def atlasIndexForChild(sprite_sprite,int_z)
			
			end





			def setTextureAtlas(textureatlas_textureAtlas)
			
			end

				def textureAtlas=(textureatlas_textureAtlas)
				end




			def getTexture()
			return Texture2D.new
			end

			def texture()
			return Texture2D.new
			end




			def increaseAtlasCapacity()
			
			end





			def getTextureAtlas()
			return TextureAtlas.new
			end

			def textureAtlas()
			return TextureAtlas.new
			end




			def insertQuadFromSprite(sprite_sprite,long_index)
			
			end





			def setTexture(texture2d_texture)
			
			end

				def texture=(texture2d_texture)
				end




			def rebuildIndexInOrder(sprite_parent,long_index)
			
			end





			def highestAtlasIndexInChild(sprite_sprite)
			
			end





			def removeChildAtIndex(long_index,bool_doCleanup)
			
			end





			def removeSpriteFromAtlas(sprite_sprite)
			
			end





			def self.create(str_fileImage,long_capacity)
			return SpriteBatchNode.new
			end





			def self.createWithTexture(texture2d_tex,long_capacity)
			return SpriteBatchNode.new
			end

    
		
			def addChild(node_child, int_zOrder, str_name)
			
			end			
    
		
			#def addChild(node_child, int_zOrder, int_name)
			#
			#end			





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end





			def getDescription()
			
			end

			def description()
			
			end




			def visit(renderer_renderer,mat4_parentTransform,int_parentFlags)
			
			end





			def sortAllChildren()
			
			end





			def removeChild(node_child,bool_cleanup)
			
			end





			def reorderChild(node_child,int_zOrder)
			
			end

	end
end
module CC
	class SpriteFrame  < Ref





			def clone()
			return SpriteFrame.new
			end





			def setRotated(bool_rotated)
			
			end

				def rotated=(bool_rotated)
				end




			def setTexture(texture2d_pobTexture)
			
			end

				def texture=(texture2d_pobTexture)
				end




			def getOffset()
			
			end

			def offset()
			
			end




			def setRectInPixels(rect_rectInPixels)
			
			end

				def rectInPixels=(rect_rectInPixels)
				end




			def getTexture()
			return Texture2D.new
			end

			def texture()
			return Texture2D.new
			end




			def getRect()
			
			end

			def rect()
			
			end




			def setOffsetInPixels(vec2_offsetInPixels)
			
			end

				def offsetInPixels=(vec2_offsetInPixels)
				end




			def getRectInPixels()
			
			end

			def rectInPixels()
			
			end




			def setOriginalSize(size_sizeInPixels)
			
			end

				def originalSize=(size_sizeInPixels)
				end




			def getOriginalSizeInPixels()
			
			end

			def originalSizeInPixels()
			
			end




			def setOriginalSizeInPixels(size_sizeInPixels)
			
			end

				def originalSizeInPixels=(size_sizeInPixels)
				end




			def setOffset(vec2_offsets)
			
			end

				def offset=(vec2_offsets)
				end




			def isRotated()
			
			end





			def setRect(rect_rect)
			
			end

				def rect=(rect_rect)
				end




			def getOffsetInPixels()
			
			end

			def offsetInPixels()
			
			end




			def getOriginalSize()
			
			end

			def originalSize()
			
			end
    
		
			def self.create(str_filename, rect_rect, bool_rotated=nil, vec2_offset=nil, size_originalSize=nil)
			return SpriteFrame.new
			end			
    
		
			#def self.create(str_filename, rect_rect)
			#return SpriteFrame.new
			#end			

    
		
			def self.createWithTexture(texture2d_pobTexture, rect_rect, bool_rotated=nil, vec2_offset=nil, size_originalSize=nil)
			return SpriteFrame.new
			end			
    
		
			#def self.createWithTexture(texture2d_pobTexture, rect_rect)
			#return SpriteFrame.new
			#end			

	end
end
module CC
	class SpriteFrameCache  < Ref





			def addSpriteFramesWithFileContent(str_plist_content,texture2d_texture)
			
			end

    
		
			def addSpriteFramesWithFile(str_plist, str_textureFileName=nil)
			
			end			
    
		
			#def addSpriteFramesWithFile(str_plist)
			#
			#end			
    
		
			#def addSpriteFramesWithFile(str_plist, texture2d_textureFileName=nil)
			#
			#end			





			def addSpriteFrame(spriteframe_frame,str_frameName)
			
			end





			def removeUnusedSpriteFrames()
			
			end





			def getSpriteFrameByName(str_name)
			return SpriteFrame.new
			end

			def spriteFrameByName(str_name)
			return SpriteFrame.new
			end




			def removeSpriteFramesFromFile(str_plist)
			
			end





			def init()
			
			end





			def removeSpriteFrames()
			
			end





			def removeSpriteFramesFromTexture(texture2d_texture)
			
			end





			def removeSpriteFramesFromFileContent(str_plist_content)
			
			end





			def removeSpriteFrameByName(str_name)
			
			end





			def self.destroyInstance()
			
			end





			def self.getInstance()
			return SpriteFrameCache.new
			end

			def self.instance()
			return SpriteFrameCache.new
			end
	end
end
module CC
	class StopGrid  < ActionInstant





			def self.create()
			return StopGrid.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return StopGrid.new
			end





			def reverse()
			return StopGrid.new
			end

	end
end
module CC
	class TargetedAction  < ActionInterval

    
		
			#def getForcedTarget()
			#
			#end			
    
		
			#def getForcedTarget()
			#return Node.new
			#end			





			def setForcedTarget(node_forcedTarget)
			
			end

				def forcedTarget=(node_forcedTarget)
				end




			def self.create(node_target,finitetimeaction_action)
			return TargetedAction.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return TargetedAction.new
			end





			def stop()
			
			end





			def reverse()
			return TargetedAction.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Texture2D  < Ref





			def getMaxT()
			
			end

			def maxT()
			
			end




			def getStringForFormat()
			
			end

			def stringForFormat()
			
			end
    
		
			def initWithImage(image_image, pixelformat_format=nil)
			
			end			
    
		
			#def initWithImage(image_image)
			#
			#end			





			def getMaxS()
			
			end

			def maxS()
			
			end




			def releaseGLTexture()
			
			end





			def hasPremultipliedAlpha()
			
			end





			def getPixelsHigh()
			
			end

			def pixelsHigh()
			
			end
    
		
			def getBitsPerPixelForFormat(pixelformat_format=nil)
			
			end			
    
		
			#def getBitsPerPixelForFormat()
			#
			#end			





			def getName()
			
			end

			def name()
			
			end
    
		
			#def initWithString(char_text, fontdefinition_fontName)
			#
			#end			
    
		
			def initWithString(char_text, str_fontName, float_fontSize=nil, size_dimensions=nil, texthalignment_hAlignment=nil, textvalignment_vAlignment=nil)
			
			end			





			def setMaxT(float_maxT)
			
			end

				def maxT=(float_maxT)
				end




			def drawInRect(rect_rect)
			
			end





			def getContentSize()
			
			end

			def contentSize()
			
			end




			def setAliasTexParameters()
			
			end

				def aliasTexParameters=()
				end




			def setAntiAliasTexParameters()
			
			end

				def antiAliasTexParameters=()
				end




			def generateMipmap()
			
			end





			def getDescription()
			
			end

			def description()
			
			end




			def getPixelFormat()
			
			end

			def pixelFormat()
			
			end




			def setGLProgram(glprogram_program)
			
			end

				def gLProgram=(glprogram_program)
				end




			def getContentSizeInPixels()
			
			end

			def contentSizeInPixels()
			
			end




			def getPixelsWide()
			
			end

			def pixelsWide()
			
			end




			def drawAtPoint(vec2_point)
			
			end





			def getGLProgram()
			return GLProgram.new
			end

			def gLProgram()
			return GLProgram.new
			end




			def hasMipmaps()
			
			end





			def setMaxS(float_maxS)
			
			end

				def maxS=(float_maxS)
				end




			def self.setDefaultAlphaPixelFormat(pixelformat_format)
			
			end

				def self.defaultAlphaPixelFormat=(pixelformat_format)
				end




			def self.getDefaultAlphaPixelFormat()
			
			end

			def self.defaultAlphaPixelFormat()
			
			end




			def Texture2D()
			
			end

	end
end
module CC
	class TextureCache  < Ref





			def reloadTexture(str_fileName)
			
			end





			def unbindAllImageAsync()
			
			end





			def removeTextureForKey(str_key)
			
			end





			def removeAllTextures()
			
			end





			def getDescription()
			
			end

			def description()
			
			end




			def getCachedTextureInfo()
			
			end

			def cachedTextureInfo()
			
			end
    
		
			def addImage(image_image, str_key=nil)
			return Texture2D.new
			end			
    
		
			#def addImage(str_image)
			#return Texture2D.new
			#end			





			def unbindImageAsync(str_filename)
			
			end





			def getTextureForKey(str_key)
			return Texture2D.new
			end

			def textureForKey(str_key)
			return Texture2D.new
			end




			def removeUnusedTextures()
			
			end





			def removeTexture(texture2d_texture)
			
			end





			def waitForQuit()
			
			end





			def TextureCache()
			
			end

	end
end
module CC
	class TiledGrid3D  < GridBase

    
		
			#def self.create(size_gridSize)
			#return TiledGrid3D.new
			#end			
    
		
			def self.create(size_gridSize, texture2d_texture=nil, bool_flipped=nil)
			return TiledGrid3D.new
			end			





			def calculateVertexPoints()
			
			end





			def blit()
			
			end





			def reuse()
			
			end





			def TiledGrid3D()
			
			end

	end
end
module CC
	class TiledGrid3DAction  < GridAction





			def getGrid()
			return GridBase.new
			end

			def grid()
			return GridBase.new
			end




			def clone()
			return TiledGrid3DAction.new
			end

	end
end
module CC
	class Timer  < Ref





			def getInterval()
			
			end

			def interval()
			
			end




			def setupTimerWithInterval(float_seconds,int_repeat,float_delay)
			
			end

				def upTimerWithInterval=(float_seconds,int_repeat,float_delay)
				end




			def setInterval(float_interval)
			
			end

				def interval=(float_interval)
				end




			def update(float_dt)
			
			end





			def trigger()
			
			end





			def cancel()
			
			end

	end
end
module CC
	class TintBy  < ActionInterval





			def self.create(float_duration,short_deltaRed,short_deltaGreen,short_deltaBlue)
			return TintBy.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return TintBy.new
			end





			def reverse()
			return TintBy.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class TintTo  < ActionInterval





			def self.create(float_duration,char_red,char_green,char_blue)
			return TintTo.new
			end





			def startWithTarget(node_target)
			
			end





			def clone()
			return TintTo.new
			end





			def reverse()
			return TintTo.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class ToggleVisibility  < ActionInstant





			def self.create()
			return ToggleVisibility.new
			end





			def clone()
			return ToggleVisibility.new
			end





			def update(float_time)
			
			end





			def reverse()
			return ToggleVisibility.new
			end

	end
end
module CC
	class Touch  < Ref





			def getPreviousLocationInView()
			
			end

			def previousLocationInView()
			
			end




			def getLocation()
			
			end

			def location()
			
			end




			def getDelta()
			
			end

			def delta()
			
			end




			def getStartLocationInView()
			
			end

			def startLocationInView()
			
			end




			def getStartLocation()
			
			end

			def startLocation()
			
			end




			def getID()
			
			end

			def iD()
			
			end




			def setTouchInfo(int_id,float_x,float_y)
			
			end

				def touchInfo=(int_id,float_x,float_y)
				end




			def getLocationInView()
			
			end

			def locationInView()
			
			end




			def getPreviousLocation()
			
			end

			def previousLocation()
			
			end




			def Touch()
			
			end

	end
end
module CC
	class TransitionCrossFade  < TransitionScene





			def self.create(float_t,scene_scene)
			return TransitionCrossFade.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end

	end
end
module CC
	class TransitionEaseScene 





			def easeActionWithAction(actioninterval_action)
			return ActionInterval.new
			end

	end
end
module CC
	class TransitionFade  < TransitionScene

    
		
			#def self.create(float_duration, scene_scene)
			#return TransitionFade.new
			#end			
    
		
			def self.create(float_duration, scene_scene, color3b_color=nil)
			return TransitionFade.new
			end			

	end
end
module CC
	class TransitionFadeBL  < TransitionFadeTR





			def self.create(float_t,scene_scene)
			return TransitionFadeBL.new
			end





			def actionWithSize(size_size)
			return ActionInterval.new
			end

	end
end
module CC
	class TransitionFadeDown  < TransitionFadeTR





			def self.create(float_t,scene_scene)
			return TransitionFadeDown.new
			end





			def actionWithSize(size_size)
			return ActionInterval.new
			end

	end
end
module CC
	class TransitionFadeTR  < TransitionScene





			def easeActionWithAction(actioninterval_action)
			return ActionInterval.new
			end





			def actionWithSize(size_size)
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionFadeTR.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end

	end
end
module CC
	class TransitionFadeUp  < TransitionFadeTR





			def self.create(float_t,scene_scene)
			return TransitionFadeUp.new
			end





			def actionWithSize(size_size)
			return ActionInterval.new
			end

	end
end
module CC
	class TransitionFlipAngular  < TransitionSceneOriented

    
		
			#def self.create(float_t, scene_s)
			#return TransitionFlipAngular.new
			#end			
    
		
			def self.create(float_t, scene_s, orientation_o=nil)
			return TransitionFlipAngular.new
			end			

	end
end
module CC
	class TransitionFlipX  < TransitionSceneOriented

    
		
			#def self.create(float_t, scene_s)
			#return TransitionFlipX.new
			#end			
    
		
			def self.create(float_t, scene_s, orientation_o=nil)
			return TransitionFlipX.new
			end			

	end
end
module CC
	class TransitionFlipY  < TransitionSceneOriented

    
		
			#def self.create(float_t, scene_s)
			#return TransitionFlipY.new
			#end			
    
		
			def self.create(float_t, scene_s, orientation_o=nil)
			return TransitionFlipY.new
			end			

	end
end
module CC
	class TransitionJumpZoom  < TransitionScene





			def self.create(float_t,scene_scene)
			return TransitionJumpZoom.new
			end

	end
end
module CC
	class TransitionMoveInB  < TransitionMoveInL





			def self.create(float_t,scene_scene)
			return TransitionMoveInB.new
			end

	end
end
module CC
	class TransitionMoveInL  < TransitionScene





			def action()
			return ActionInterval.new
			end





			def easeActionWithAction(actioninterval_action)
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionMoveInL.new
			end

	end
end
module CC
	class TransitionMoveInR  < TransitionMoveInL





			def self.create(float_t,scene_scene)
			return TransitionMoveInR.new
			end

	end
end
module CC
	class TransitionMoveInT  < TransitionMoveInL





			def self.create(float_t,scene_scene)
			return TransitionMoveInT.new
			end

	end
end
module CC
	class TransitionPageTurn  < TransitionScene





			def actionWithSize(size_vector)
			return ActionInterval.new
			end





			def initWithDuration(float_t,scene_scene,bool_backwards)
			
			end





			def self.create(float_t,scene_scene,bool_backwards)
			return TransitionPageTurn.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end

	end
end
module CC
	class TransitionProgress  < TransitionScene





			def self.create(float_t,scene_scene)
			return TransitionProgress.new
			end

	end
end
module CC
	class TransitionProgressHorizontal  < TransitionProgress





			def self.create(float_t,scene_scene)
			return TransitionProgressHorizontal.new
			end

	end
end
module CC
	class TransitionProgressInOut  < TransitionProgress





			def self.create(float_t,scene_scene)
			return TransitionProgressInOut.new
			end

	end
end
module CC
	class TransitionProgressOutIn  < TransitionProgress





			def self.create(float_t,scene_scene)
			return TransitionProgressOutIn.new
			end

	end
end
module CC
	class TransitionProgressRadialCCW  < TransitionProgress





			def self.create(float_t,scene_scene)
			return TransitionProgressRadialCCW.new
			end

	end
end
module CC
	class TransitionProgressRadialCW  < TransitionProgress





			def self.create(float_t,scene_scene)
			return TransitionProgressRadialCW.new
			end

	end
end
module CC
	class TransitionProgressVertical  < TransitionProgress





			def self.create(float_t,scene_scene)
			return TransitionProgressVertical.new
			end

	end
end
module CC
	class TransitionRotoZoom  < TransitionScene





			def self.create(float_t,scene_scene)
			return TransitionRotoZoom.new
			end

	end
end
module CC
	class TransitionScene  < Scene





			def finish()
			
			end





			def hideOutShowIn()
			
			end





			def self.create(float_t,scene_scene)
			return TransitionScene.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end





			def cleanup()
			
			end

	end
end
module CC
	class TransitionSceneOriented  < TransitionScene





			def self.create(float_t,scene_scene,orientation_orientation)
			return TransitionSceneOriented.new
			end

	end
end
module CC
	class TransitionShrinkGrow  < TransitionScene





			def easeActionWithAction(actioninterval_action)
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionShrinkGrow.new
			end

	end
end
module CC
	class TransitionSlideInB  < TransitionSlideInL





			def action()
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionSlideInB.new
			end

	end
end
module CC
	class TransitionSlideInL  < TransitionScene





			def action()
			return ActionInterval.new
			end





			def easeActionWithAction(actioninterval_action)
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionSlideInL.new
			end

	end
end
module CC
	class TransitionSlideInR  < TransitionSlideInL





			def action()
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionSlideInR.new
			end

	end
end
module CC
	class TransitionSlideInT  < TransitionSlideInL





			def action()
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionSlideInT.new
			end

	end
end
module CC
	class TransitionSplitCols  < TransitionScene





			def action()
			return ActionInterval.new
			end





			def easeActionWithAction(actioninterval_action)
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionSplitCols.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end

	end
end
module CC
	class TransitionSplitRows  < TransitionSplitCols





			def self.create(float_t,scene_scene)
			return TransitionSplitRows.new
			end





			def action()
			return ActionInterval.new
			end

	end
end
module CC
	class TransitionTurnOffTiles  < TransitionScene





			def easeActionWithAction(actioninterval_action)
			return ActionInterval.new
			end





			def self.create(float_t,scene_scene)
			return TransitionTurnOffTiles.new
			end





			def draw(renderer_renderer,mat4_transform,int_flags)
			
			end

	end
end
module CC
	class TransitionZoomFlipAngular  < TransitionSceneOriented

    
		
			#def self.create(float_t, scene_s)
			#return TransitionZoomFlipAngular.new
			#end			
    
		
			def self.create(float_t, scene_s, orientation_o=nil)
			return TransitionZoomFlipAngular.new
			end			

	end
end
module CC
	class TransitionZoomFlipX  < TransitionSceneOriented

    
		
			#def self.create(float_t, scene_s)
			#return TransitionZoomFlipX.new
			#end			
    
		
			def self.create(float_t, scene_s, orientation_o=nil)
			return TransitionZoomFlipX.new
			end			

	end
end
module CC
	class TransitionZoomFlipY  < TransitionSceneOriented

    
		
			#def self.create(float_t, scene_s)
			#return TransitionZoomFlipY.new
			#end			
    
		
			def self.create(float_t, scene_s, orientation_o=nil)
			return TransitionZoomFlipY.new
			end			

	end
end
module CC
	class TurnOffTiles  < TiledGrid3DAction





			def turnOnTile(vec2_pos)
			
			end





			def turnOffTile(vec2_pos)
			
			end

    
		
			def self.create(float_duration, size_gridSize, int_seed=nil)
			return TurnOffTiles.new
			end			
    
		
			#def self.create(float_duration, size_gridSize)
			#return TurnOffTiles.new
			#end			





			def startWithTarget(node_target)
			
			end





			def clone()
			return TurnOffTiles.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Twirl  < Grid3DAction





			def setAmplitudeRate(float_amplitudeRate)
			
			end

				def amplitudeRate=(float_amplitudeRate)
				end




			def getAmplitudeRate()
			
			end

			def amplitudeRate()
			
			end




			def setAmplitude(float_amplitude)
			
			end

				def amplitude=(float_amplitude)
				end




			def getAmplitude()
			
			end

			def amplitude()
			
			end




			def setPosition(vec2_position)
			
			end

				def position=(vec2_position)
				end




			def getPosition()
			
			end

			def position()
			
			end




			def self.create(float_duration,size_gridSize,vec2_position,int_twirls,float_amplitude)
			return Twirl.new
			end





			def clone()
			return Twirl.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class UserDefault 





			def setIntegerForKey(char_pKey,int_value)
			
			end

				def integerForKey=(char_pKey,int_value)
				end
    
		
			def getFloatForKey(char_pKey, float_defaultValue=nil)
			
			end			
    
		
			#def getFloatForKey(char_pKey)
			#
			#end			

    
		
			def getBoolForKey(char_pKey, bool_defaultValue=nil)
			
			end			
    
		
			#def getBoolForKey(char_pKey)
			#
			#end			





			def setDoubleForKey(char_pKey,double_value)
			
			end

				def doubleForKey=(char_pKey,double_value)
				end




			def setFloatForKey(char_pKey,float_value)
			
			end

				def floatForKey=(char_pKey,float_value)
				end
    
		
			def getStringForKey(char_pKey, str_defaultValue=nil)
			
			end			
    
		
			#def getStringForKey(char_pKey)
			#
			#end			





			def setStringForKey(char_pKey,str_value)
			
			end

				def stringForKey=(char_pKey,str_value)
				end




			def flush()
			
			end

    
		
			def getIntegerForKey(char_pKey, int_defaultValue=nil)
			
			end			
    
		
			#def getIntegerForKey(char_pKey)
			#
			#end			

    
		
			def getDoubleForKey(char_pKey, double_defaultValue=nil)
			
			end			
    
		
			#def getDoubleForKey(char_pKey)
			#
			#end			





			def setBoolForKey(char_pKey,bool_value)
			
			end

				def boolForKey=(char_pKey,bool_value)
				end




			def self.destroyInstance()
			
			end





			def self.getXMLFilePath()
			
			end

			def self.xMLFilePath()
			
			end




			def self.isXMLFileExist()
			
			end

	end
end
module CC
	class Waves  < Grid3DAction





			def getAmplitudeRate()
			
			end

			def amplitudeRate()
			
			end




			def setAmplitude(float_amplitude)
			
			end

				def amplitude=(float_amplitude)
				end




			def setAmplitudeRate(float_amplitudeRate)
			
			end

				def amplitudeRate=(float_amplitudeRate)
				end




			def getAmplitude()
			
			end

			def amplitude()
			
			end




			def self.create(float_duration,size_gridSize,int_waves,float_amplitude,bool_horizontal,bool_vertical)
			return Waves.new
			end





			def clone()
			return Waves.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class Waves3D  < Grid3DAction





			def getAmplitudeRate()
			
			end

			def amplitudeRate()
			
			end




			def setAmplitude(float_amplitude)
			
			end

				def amplitude=(float_amplitude)
				end




			def setAmplitudeRate(float_amplitudeRate)
			
			end

				def amplitudeRate=(float_amplitudeRate)
				end




			def getAmplitude()
			
			end

			def amplitude()
			
			end




			def self.create(float_duration,size_gridSize,int_waves,float_amplitude)
			return Waves3D.new
			end





			def clone()
			return Waves3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
	class WavesTiles3D  < TiledGrid3DAction





			def getAmplitudeRate()
			
			end

			def amplitudeRate()
			
			end




			def setAmplitude(float_amplitude)
			
			end

				def amplitude=(float_amplitude)
				end




			def setAmplitudeRate(float_amplitudeRate)
			
			end

				def amplitudeRate=(float_amplitudeRate)
				end




			def getAmplitude()
			
			end

			def amplitude()
			
			end




			def self.create(float_duration,size_gridSize,int_waves,float_amplitude)
			return WavesTiles3D.new
			end





			def clone()
			return WavesTiles3D.new
			end





			def update(float_time)
			
			end

	end
end
module CC
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
end