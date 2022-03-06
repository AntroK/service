//
// Created by Liu,Houkai on 2022/3/5.
//

#ifndef SERVICE_LOGGER_H
#define SERVICE_LOGGER_H

#include <list>
#include "iostream"
#include "stdint.h"
#include "memory"

namespace sylar{

    class LogLevel {
    public:
        enum Level{
            DEBUG = 1,
            INFO = 2,
            WARN = 3,
            ERROR = 4,
            FATAL = 5
        };
    };

    // 保存日志的属性字段
    class LogEvent{
    public:
        typedef std::shared_ptr<LogEvent> ptr;
        LogEvent();

        void log(LogLevel::Level level, LogEvent::ptr event){

        };
    private:
        // 文件名
        const char * m_file = nullptr;
        int32_t m_line = 0;         // 行号
        int32_t m_threadId = 0;     // 线程号
        uint32_t m_fiberId = 0;     // 协程号
        uint32_t m_elapse = 0;      // 程序启动开始到现在的毫秒数
        uint64_t m_time;            // 时间
        std::string m_content;      // 消息类
    };

    // 日志输出格式
    class LogFormatter{
    public:
        // 把Event格式化成string 然后进行输出
        typedef std::shared_ptr<LogFormatter> ptr;
        std::string format(LogEvent::ptr event);
    private:

    };

    // 日志输出地
    class LogAppender{
    public:
        typedef std::shared_ptr<LogAppender> ptr;
        virtual ~LogAppender(){};
        void log(LogLevel::Level level, LogEvent::ptr event){};
    private:
        LogLevel::Level m_level;
    };

    // 日志输出器
    class Logger {
    public:
        typedef std::shared_ptr<Logger> ptr;
        // 日志级别用枚举

        Logger(const std::string &name = "root");
        void log(LogLevel::Level level, const LogEvent::ptr event);
        void debug(LogEvent::ptr event);
        void info(LogEvent::ptr event);
        void warn(LogEvent::ptr event);
        void error(LogEvent::ptr event);
        void fatal(LogEvent::ptr event);

        void addAppender(LogAppender::ptr appender);
        void delAppender(LogAppender::ptr appender);
        void setLevel(LogLevel::Level level) { this->m_level = level; };

    private:
        std::string m_name;             // 日志文件
        LogLevel::Level m_level;        // 日志等级
        std::list<LogAppender::ptr> m_appenders;    // appender集合
    };

    class LogEventWrap{

    };

    // 输出到控制台的appender
    class StdoutLogAppender : public LogAppender {

    };

    // 输出到文件的appender
    class FileLogAppender : public LogAppender {

    };

}



#endif //SERVICE_LOGGER_H
