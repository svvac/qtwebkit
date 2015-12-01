/*
 * Copyright (C) 2010 Apple Inc. All rights reserved.
 * Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies)
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE INC. AND ITS CONTRIBUTORS ``AS IS''
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL APPLE INC. OR ITS CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 * THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "config.h"
#include "WorkQueue.h"

#include <QLocalSocket>
#include <QObject>
#include <QThread>
#include <QProcess>
#include <wtf/Threading.h>

class WorkQueue::WorkItemQt : public QObject {
    Q_OBJECT
public:
    WorkItemQt(std::function<void()> function, WorkQueue* queue)
      : m_function(function)
      , m_queue(queue)
    {
    }

    virtual ~WorkItemQt()
    {
    }

    std::function<void()>& function() { return m_function; }
    WorkQueue* queue() const { return m_queue.get(); }

private:
    std::function<void()> m_function;
    RefPtr<WorkQueue> m_queue;
};

void WorkQueue::platformInitialize(const char*, Type, QOS)
{
    m_workThread = new QThread();
    m_workThread->start();
}

void WorkQueue::platformInvalidate()
{
    m_workThread->exit();
    m_workThread->wait();
    delete m_workThread;
}

void WorkQueue::dispatch(std::function<void()> function)
{
}

void WorkQueue::dispatchAfter(
    std::chrono::nanoseconds duration,
    std::function<void()> function)
{
}

QSocketNotifier* WorkQueue::registerSocketEventHandler(
    int socketDescriptor,
    std::function<void()> function)
{
    ASSERT(m_workThread);

    QSocketNotifier* notifier = new QSocketNotifier(socketDescriptor, QSocketNotifier::Read, 0);
    notifier->setEnabled(false);
    notifier->moveToThread(m_workThread);
    WorkItemQt* itemQt = new WorkItemQt(function, this);
    itemQt->moveToThread(m_workThread);
    notifier->setEnabled(true);
    return notifier;
}

void WorkQueue::unregisterSocketEventHandler()
{

}

#include "WorkQueueQt.moc"
