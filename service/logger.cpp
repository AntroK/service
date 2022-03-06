//
// Created by Liu,Houkai on 2022/3/5.
//

#include "logger.h"

namespace sylar{

    Logger::Logger(const std::string &name) :m_name(name) {}

    void Logger::addAppender (LogAppender::ptr appender){
        m_appenders.push_back(appender);
    };
    void Logger::delAppender (LogAppender::ptr appender){
        for(auto it = m_appenders.begin();
                it != m_appenders.end(); ++it ){
            if(*it == appender){
                m_appenders.erase(it);
                break;
            }
        }
        m_appenders.push_back(appender);
    };

    void Logger::log(LogLevel::Level level, const sylar::LogEvent::ptr event) {
        if (level > m_level){
            for(auto &i : m_appenders){
                i->log(level, event);
            }
        }
    }

    void Logger::debug(sylar::LogEvent::ptr event) {
        log(LogLevel::DEBUG, event);
    }

    void Logger::info(sylar::LogEvent::ptr event) {
        log(LogLevel::INFO, event);
    }

    void Logger::warn(sylar::LogEvent::ptr event) {
        log(LogLevel::WARN, event);
    }

    void Logger::error(sylar::LogEvent::ptr event) {
        log(LogLevel::ERROR, event);
    }

    void Logger::fatal(sylar::LogEvent::ptr event) {
        log(LogLevel::FATAL, event);
    }

}