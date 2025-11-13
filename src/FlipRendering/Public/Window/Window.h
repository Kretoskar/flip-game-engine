#pragma once


#include "glad/glad.h"
#include "Core/HString.h"
#include "glfw/glfw3.h"

namespace Flip
{
    class Window
    {
    public:
        virtual bool Init();
        virtual void Update();
        virtual void Shutdown();

        GLFWwindow* GetGlfwWindow() const { return _glfwWindow; }
        bool GetShouldClose() const { return _glfwWindow ? glfwWindowShouldClose(_glfwWindow) : false; }

    protected:
        GLFWwindow* _glfwWindow = nullptr;
        bool _isValid = false;

        u32 _width{};
        u32 _height{};
        HString _name;
    };
}