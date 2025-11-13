#include "Sandbox/Application.h"

#include "Core/Logger.h"
#include "Core/Containers/Span.h"
#include "Window/Window.h"

void Flip::Sandbox::Application::Run()
{
    Flip::Span s;
    s.Fun();
    LOG_MESSAGE("jpjpjp")

    Window w;
    if (w.Init())
    {
        while (true)
        {
            w.Update();
        }
    }
    
}
