.class Lcom/android/server/DevicePolicyManagerService$5;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->setTetheringDisabled(Landroid/content/ComponentName;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3924
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$5;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$5;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 3927
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 3928
    .local v0, pan:Landroid/bluetooth/BluetoothPan;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 3929
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService$5;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 3930
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 3932
    return-void
.end method
