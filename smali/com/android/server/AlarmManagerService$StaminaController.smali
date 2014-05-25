.class Lcom/android/server/AlarmManagerService$StaminaController;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaController"
.end annotation


# instance fields
.field private final mAlarmArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/StaminaArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPowerState:I

.field private final mSuperStaminaInternalWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuperStaminaUidWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    .line 1343
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    .line 1346
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    .line 1348
    new-instance v1, Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    invoke-direct {v1, p1, p0}, Lcom/android/server/AlarmManagerService$PowerStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$StaminaController;)V

    .line 1349
    .local v1, powerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1350
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1352
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Lcom/android/server/StaminaArrayList;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Lcom/android/server/StaminaArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcAlarms:Lcom/android/server/StaminaArrayList;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/StaminaArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Lcom/android/server/StaminaArrayList;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/StaminaArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1355
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Lcom/android/server/StaminaArrayList;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/StaminaArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    return-void
.end method

.method private triggerAlarmLocked(Lcom/android/server/StaminaArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/StaminaArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1502
    .local p1, alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Lcom/android/server/StaminaArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/StaminaArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    #calls: Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    invoke-static {v1, v0}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1505
    :cond_0
    return-void
.end method


# virtual methods
.method public addWhitelistedUid(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1407
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1408
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1409
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1410
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StaminaArrayList;

    .line 1411
    .local v0, alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0}, Lcom/android/server/StaminaArrayList;->update()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->triggerAlarmLocked(Lcom/android/server/StaminaArrayList;)V

    .line 1409
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1414
    .end local v0           #alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v1           #i:I
    :cond_1
    monitor-exit v3

    .line 1415
    return-void

    .line 1414
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 1481
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    const-string v3, " Super Stamina debug info:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Power state ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Internal Whitelist ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1488
    .local v1, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1490
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " User Whitelist ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1493
    .local v2, uid:Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1495
    .end local v2           #uid:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public isWhitelisted(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 5
    .parameter "alarm"

    .prologue
    .line 1441
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1442
    :try_start_0
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, packageName:Ljava/lang/String;
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 1444
    .local v1, uid:I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1445
    const/4 v2, 0x1

    monitor-exit v3

    .line 1447
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 1448
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #uid:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeWhitelistedUid(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1387
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1388
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1389
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StaminaArrayList;

    .line 1390
    .local v0, alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0}, Lcom/android/server/StaminaArrayList;->update()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->triggerAlarmLocked(Lcom/android/server/StaminaArrayList;)V

    .line 1388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1393
    .end local v0           #alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v1           #i:I
    :cond_1
    monitor-exit v3

    .line 1394
    return-void

    .line 1393
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resumeAlarmsAfter(JJ)V
    .locals 4
    .parameter "rtc"
    .parameter "elapsed"

    .prologue
    .line 1366
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1367
    :try_start_0
    iget v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    if-nez v2, :cond_0

    monitor-exit v3

    .line 1373
    :goto_0
    return-void

    .line 1368
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1369
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StaminaArrayList;

    .line 1370
    .local v0, alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/StaminaArrayList;->resumeAlarmsAfter(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->triggerAlarmLocked(Lcom/android/server/StaminaArrayList;)V

    .line 1368
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1372
    .end local v0           #alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPowerState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1458
    :try_start_0
    iput p1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    .line 1459
    packed-switch p1, :pswitch_data_0

    .line 1472
    :goto_0
    monitor-exit v1

    .line 1473
    return-void

    .line 1461
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->suppressAlarms(Z)V

    goto :goto_0

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1465
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->suppressAlarms(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public suppressAlarms(Z)V
    .locals 4
    .parameter "suppress"

    .prologue
    .line 1423
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1425
    if-eqz p1, :cond_0

    :try_start_0
    iget v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    if-nez v2, :cond_0

    monitor-exit v3

    .line 1432
    :goto_0
    return-void

    .line 1426
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1427
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmArrays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StaminaArrayList;

    .line 1428
    .local v0, alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0, p1}, Lcom/android/server/StaminaArrayList;->suppressAlarms(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->triggerAlarmLocked(Lcom/android/server/StaminaArrayList;)V

    .line 1426
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1431
    .end local v0           #alarms:Lcom/android/server/StaminaArrayList;,"Lcom/android/server/StaminaArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
