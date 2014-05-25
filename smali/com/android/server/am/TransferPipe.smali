.class Lcom/android/server/am/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 58
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 59
    return-void
.end method

.method static go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "caller"
    .parameter "iface"
    .parameter "out"
    .parameter "prefix"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/TransferPipe;->go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 80
    return-void
.end method

.method static go(Lcom/android/server/am/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2
    .parameter "caller"
    .parameter "iface"
    .parameter "out"
    .parameter "prefix"
    .parameter "args"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/am/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/android/server/am/TransferPipe;

    invoke-direct {v0}, Lcom/android/server/am/TransferPipe;-><init>()V

    .line 95
    .local v0, tp:Lcom/android/server/am/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/server/am/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v1

    .line 88
    .end local v0           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .parameter "binder"
    .parameter "out"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/am/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 105
    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .locals 2
    .parameter "binder"
    .parameter "out"
    .parameter "args"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    instance-of v1, p0, Landroid/os/Binder;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/android/server/am/TransferPipe;

    invoke-direct {v0}, Lcom/android/server/am/TransferPipe;-><init>()V

    .line 120
    .local v0, tp:Lcom/android/server/am/TransferPipe;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v1

    .line 113
    .end local v0           #tp:Lcom/android/server/am/TransferPipe;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method closeFd(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 179
    :cond_0
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getWriteFd()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method go(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 129
    return-void
.end method

.method go(Ljava/io/FileDescriptor;J)V
    .locals 6
    .parameter "out"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    iput-object p1, p0, Lcom/android/server/am/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/server/am/TransferPipe;->mEndTime:J

    .line 141
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    .line 143
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/am/TransferPipe;->mComplete:Z

    if-nez v2, :cond_1

    .line 146
    iget-wide v2, p0, Lcom/android/server/am/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 147
    .local v0, waitTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 150
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    .end local v0           #waitTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->kill()V

    throw v2

    .line 154
    .restart local v0       #waitTime:J
    :cond_0
    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    goto :goto_0

    .line 160
    .end local v0           #waitTime:J
    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 161
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->kill()V

    .line 167
    return-void
.end method

.method kill()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/TransferPipe;->closeFd(I)V

    .line 185
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    .line 189
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 191
    .local v0, buffer:[B
    invoke-virtual {p0}, Lcom/android/server/am/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 192
    .local v8, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v8, :cond_0

    const/4 v3, 0x0

    .line 193
    .local v3, fd:Ljava/io/FileDescriptor;
    :goto_0
    if-nez v3, :cond_1

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    const-string v11, "Pipe closed for reading"

    iput-object v11, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_1
    return-void

    .line 192
    .end local v3           #fd:Ljava/io/FileDescriptor;
    :cond_0
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    goto :goto_0

    .line 198
    .restart local v3       #fd:Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 201
    :cond_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 202
    .local v4, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/android/server/am/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 205
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 206
    .local v1, bufferPrefix:[B
    const/4 v7, 0x1

    .line 207
    .local v7, needPrefix:Z
    iget-object v11, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 208
    iget-object v11, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 213
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    .local v9, size:I
    if-lez v9, :cond_9

    .line 215
    if-nez v1, :cond_3

    .line 216
    const/4 v11, 0x0

    invoke-virtual {v5, v0, v11, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 246
    .end local v9           #size:I
    :catch_0
    move-exception v2

    .line 247
    .local v2, e:Ljava/io/IOException;
    monitor-enter p0

    .line 248
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/am/TransferPipe;->mFailure:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 250
    monitor-exit p0

    goto :goto_1

    .line 251
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 218
    .end local v2           #e:Ljava/io/IOException;
    .restart local v9       #size:I
    :cond_3
    const/4 v10, 0x0

    .line 219
    .local v10, start:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v9, :cond_8

    .line 220
    :try_start_4
    aget-byte v11, v0, v6

    if-eq v11, v12, :cond_7

    .line 221
    if-le v6, v10, :cond_4

    .line 222
    sub-int v11, v6, v10

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 224
    :cond_4
    move v10, v6

    .line 225
    if-eqz v7, :cond_5

    .line 226
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 227
    const/4 v7, 0x0

    .line 230
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 231
    if-ge v6, v9, :cond_6

    aget-byte v11, v0, v6

    if-ne v11, v12, :cond_5

    .line 232
    :cond_6
    if-ge v6, v9, :cond_7

    .line 233
    const/4 v7, 0x1

    .line 219
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 237
    :cond_8
    if-le v9, v10, :cond_2

    .line 238
    sub-int v11, v9, v10

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 243
    .end local v6           #i:I
    .end local v10           #start:I
    :cond_9
    iget-object v11, p0, Lcom/android/server/am/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v11

    if-eqz v11, :cond_a

    .line 254
    :cond_a
    monitor-enter p0

    .line 255
    const/4 v11, 0x1

    :try_start_5
    iput-boolean v11, p0, Lcom/android/server/am/TransferPipe;->mComplete:Z

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 257
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v11

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v11
.end method

.method setBufferPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/am/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 75
    return-void
.end method
