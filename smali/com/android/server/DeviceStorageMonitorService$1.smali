.class Lcom/android/server/DeviceStorageMonitorService$1;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 167
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "IMediaContainerService onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$002(Lcom/android/server/DeviceStorageMonitorService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 169
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mNeedToDumpFileInfo:Z
    invoke-static {v0}, Lcom/android/server/DeviceStorageMonitorService;->access$100(Lcom/android/server/DeviceStorageMonitorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "There is an dump request before. Trigger dump again."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$202(I)I

    .line 172
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mNeedToDumpFileInfo:Z
    invoke-static {v0, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 173
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #calls: Lcom/android/server/DeviceStorageMonitorService;->dumpFileInfo()V
    invoke-static {v0}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 178
    const-string v0, "DeviceStorageMonitorService"

    const-string v1, "IMediaContainerService onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$002(Lcom/android/server/DeviceStorageMonitorService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 180
    return-void
.end method
