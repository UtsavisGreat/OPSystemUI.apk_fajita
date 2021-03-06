.class public Lcom/android/systemui/qs/tiles/DataSwitchTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DataSwitchTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;,
        Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field static final DATA_SWITCH_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mCanSwitch:Z

.field protected final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

.field private mRegistered:Z

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

.field private mSimCount:I

.field mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVirtualSimExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->DATA_SWITCH_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    .line 43
    iput v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 52
    new-instance v1, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    .line 113
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$1;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 62
    new-instance v0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    .line 65
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    return p1
.end method

.method public static synthetic lambda$handleClick$0(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->setDefaultDataSimIndex(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->refreshState()V

    .line 191
    return-void
.end method

.method private setDefaultDataSimIndex(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oemDdsSwitch:phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "oemDdsSwitch"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 147
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "setDefaultDataSimId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "clear ext telephony service ref"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateSimCount()V
    .locals 5

    .line 122
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "simState":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSwitchTile:updateSimCount:simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    .line 126
    :try_start_0
    const-string v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "sims":[Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 128
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v2, v1

    const-string v4, "ABSENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v2, v1

    const-string v4, "NOT_READY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    goto :goto_1

    .line 131
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    .end local v2    # "sims":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v3, "Error to parse sim state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSwitchTile:updateSimCount:mSimCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 197
    sget-object v0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->DATA_SWITCH_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 263
    const/16 v0, 0x7d2

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 4

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mCanSwitch:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "virtual sim exist. ignore click."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 176
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "handleClick:no sim card"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v3, 0x7f1104d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    return-void

    .line 180
    :cond_2
    iget v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    if-ne v0, v1, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string v2, "handleClick:only one sim card"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v3, 0x7f1104d5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    return-void

    .line 187
    :cond_3
    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$DataSwitchTile$SMUKxUiuh-wmJK6getmuCjTYAmY;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$DataSwitchTile$SMUKxUiuh-wmJK6getmuCjTYAmY;-><init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .line 85
    if-eqz p1, :cond_1

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    .line 98
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->refreshState()V

    goto :goto_0

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/DataSwitchTile$DataSwitchSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 108
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mRegistered:Z

    .line 111
    :cond_2
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 209
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 211
    .local v1, "defaultPhoneId":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default data phone id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-nez v1, :cond_0

    .line 214
    const/4 v2, 0x1

    .line 214
    .local v2, "value":Z
    goto :goto_0

    .line 216
    .end local v2    # "value":Z
    :cond_0
    nop

    .line 216
    .end local v1    # "defaultPhoneId":I
    move v2, v0

    .line 216
    .restart local v2    # "value":Z
    :goto_0
    move v1, v2

    .line 218
    .end local v2    # "value":Z
    .local v1, "value":Z
    goto :goto_1

    .line 219
    .end local v1    # "value":Z
    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 222
    .restart local v1    # "value":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->updateSimCount()V

    .line 224
    iget v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    const/4 v3, 0x1

    const v4, 0x7f080529

    packed-switch v2, :pswitch_data_0

    .line 235
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 236
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_4

    .line 226
    :pswitch_0
    if-eqz v1, :cond_2

    const v2, 0x7f080528

    goto :goto_2

    :cond_2
    const v2, 0x7f08052a

    :goto_2
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 227
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 228
    goto :goto_4

    .line 230
    :pswitch_1
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const v4, 0x7f08052b

    :goto_3
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 231
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 232
    nop

    .line 242
    :goto_4
    iget v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mSimCount:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    .line 243
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_5

    .line 244
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mVirtualSimExist:Z

    if-eqz v2, :cond_5

    .line 245
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "virtual sim exist, set to unavailable."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 248
    :cond_5
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_6

    move v3, v4

    nop

    :cond_6
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 252
    :goto_5
    if-eqz v1, :cond_7

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1100be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_6

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1100bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 258
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1104d3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 259
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 4

    .line 72
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 73
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 80
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
