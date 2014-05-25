.class Lcom/android/server/Watchdog$1;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/Watchdog;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/Watchdog$1;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 468
    :try_start_0
    const-string v1, "dumpsys cpuinfo"

    .line 469
    .local v1, command:Ljava/lang/String;
    const-string v9, "Watchdog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpCPUusageThread start: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/sh"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 473
    .local v7, p:Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 474
    .local v5, is:Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 475
    .local v6, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 477
    .local v0, br:Ljava/io/BufferedReader;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 478
    .local v3, headtime:J
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, tmp:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 479
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 480
    const-string v9, "Watchdog"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-wide/16 v11, 0x7530

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 483
    const-string v9, "Watchdog"

    const-string v10, "dumpCPUusageThread timeout!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_2
    #calls: Lcom/android/server/Watchdog;->destroyProcess(Ljava/lang/Process;)V
    invoke-static {v7}, Lcom/android/server/Watchdog;->access$000(Ljava/lang/Process;)V

    .line 488
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 489
    const/4 v0, 0x0

    .line 491
    const-string v1, "top -n 3 -d 3 -m 10 -t"

    .line 492
    const-string v9, "Watchdog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpCPUusageThread start: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/sh"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 496
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 497
    new-instance v6, Ljava/io/InputStreamReader;

    .end local v6           #isr:Ljava/io/InputStreamReader;
    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 498
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #br:Ljava/io/BufferedReader;
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 500
    .restart local v0       #br:Ljava/io/BufferedReader;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 501
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 502
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 503
    const-string v9, "Watchdog"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-wide/16 v11, 0x7530

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    .line 506
    const-string v9, "Watchdog"

    const-string v10, "dumpCPUusageThread timeout!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_5
    #calls: Lcom/android/server/Watchdog;->destroyProcess(Ljava/lang/Process;)V
    invoke-static {v7}, Lcom/android/server/Watchdog;->access$000(Ljava/lang/Process;)V

    .line 511
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 512
    const/4 v0, 0x0

    .line 513
    const-string v9, "Watchdog"

    const-string v10, "dumpCPUusageThread end!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #command:Ljava/lang/String;
    .end local v3           #headtime:J
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #isr:Ljava/io/InputStreamReader;
    .end local v7           #p:Ljava/lang/Process;
    .end local v8           #tmp:Ljava/lang/String;
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Watchdog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpCPUusageThread Exception="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
