.class Lcom/android/server/power/ShutdownThread$5;
.super Landroid/os/storage/IMountShutdownObserver$Stub;
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
.field private mShutdownSuccessVolumesCount:I

.field private mSm:Landroid/os/storage/StorageManager;

.field private mVolumesCount:I

.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 574
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Landroid/os/storage/IMountShutdownObserver$Stub;-><init>()V

    .line 575
    iput v0, p0, Lcom/android/server/power/ShutdownThread$5;->mShutdownSuccessVolumesCount:I

    .line 576
    iput v0, p0, Lcom/android/server/power/ShutdownThread$5;->mVolumesCount:I

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->mSm:Landroid/os/storage/StorageManager;

    return-void
.end method


# virtual methods
.method public onShutDownComplete(I)V
    .locals 5
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->mSm:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    #getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->mSm:Landroid/os/storage/StorageManager;

    .line 582
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->mSm:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 583
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v1

    iput v2, p0, Lcom/android/server/power/ShutdownThread$5;->mVolumesCount:I

    .line 584
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/ShutdownThread$5;->mVolumesCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volume(s) need to be handled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/server/power/ShutdownThread$5;->mVolumesCount:I

    if-ge v0, v2, :cond_0

    .line 587
    const-string v2, "ShutdownThread"

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .end local v0           #i:I
    .end local v1           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    iget v2, p0, Lcom/android/server/power/ShutdownThread$5;->mShutdownSuccessVolumesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/ShutdownThread$5;->mShutdownSuccessVolumesCount:I

    .line 591
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from MountService.shutdown, success count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/ShutdownThread$5;->mShutdownSuccessVolumesCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget v2, p0, Lcom/android/server/power/ShutdownThread$5;->mShutdownSuccessVolumesCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 595
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    #getter for: Lcom/android/server/power/ShutdownThread;->mMountServiceDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 596
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownThread;->actionDone()V

    .line 598
    :cond_1
    return-void
.end method
