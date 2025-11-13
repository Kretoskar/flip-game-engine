#pragma once

#include "Logger.h"

#ifdef FLIP_DEBUG
    # define ASSERT(condition, message) \
    { \
    if (!(condition)) \
    { \
    char buffer[LOG_TEMPLATE_LENGTH]; \
    sprintf_s(buffer, "[Assert] [File: %s] [Line: %d] ", __FILE__, __LINE__); \
    Flip::Logger::GetInstance().Log(std::move(buffer), Flip::LogVerbosity::Error, message); \
    std::terminate(); \
    } \
    }

#define ASSERT_NO_ENTRY() ASSERT(false, "No entry assert entered")

#else
    #   define ASSERT(condition, message) {}
    #   define ASSERT_NO_ENTRY(message) {}
#endif