module(..., package.seeall)

function onCreate(params)
    guiView = View {
        scene = scene,
        children = {{
            Panel {
                name = "panel",
                size = {300, 460},
                pos = {10, 10},
            },
        }},
    
    }
end

function onStart()
end

function onTouchDown(e)
    SceneManager:closeScene()
end