.class Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$observer:Landroid/os/storage/IMountShutdownObserver;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/os/storage/IMountShutdownObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$6;->val$observer:Landroid/os/storage/IMountShutdownObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 607
    const-string v6, "ShutdownThread"

    const-string v7, "unmountThread +"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x4e20

    add-long v3, v6, v8

    .line 611
    .local v3, endShutTime:J
    iget-object v6, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    #getter for: Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->access$100(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 613
    :try_start_0
    const-string v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v5

    .line 615
    .local v5, mount:Landroid/os/storage/IMountService;
    if-eqz v5, :cond_1

    .line 616
    iget-object v6, p0, Lcom/android/server/power/ShutdownThread$6;->val$observer:Landroid/os/storage/IMountShutdownObserver;

    invoke-interface {v5, v6}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v5           #mount:Landroid/os/storage/IMountService;
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    #getter for: Lcom/android/server/power/ShutdownThread;->mActionDone:Z
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->access$300(Lcom/android/server/power/ShutdownThread;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v3, v8

    .line 625
    .local v0, delay:J
    const-wide/16 v8, 0x0

    cmp-long v6, v0, v8

    if-gtz v6, :cond_2

    .line 626
    const-string v6, "ShutdownThread"

    const-string v8, "Shutdown wait timed out"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v0           #delay:J
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    const-string v6, "ShutdownThread"

    const-string v7, "unmountThread -"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void

    .line 618
    .restart local v5       #mount:Landroid/os/storage/IMountService;
    :cond_1
    :try_start_2
    const-string v6, "ShutdownThread"

    const-string v8, "MountService unavailable for shutdown"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 620
    .end local v5           #mount:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v2

    .line 621
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ShutdownThread"

    const-string v8, "Exception during MountService shutdown"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 634
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 630
    .restart local v0       #delay:J
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/android/server/power/ShutdownThread$6;->this$0:Lcom/android/server/power/ShutdownThread;

    #getter for: Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->access$100(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 631
    :catch_1
    move-exception v6

    goto :goto_0
.end method
