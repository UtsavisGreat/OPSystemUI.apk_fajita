.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$NotificationClicker$LBMGOladLjt5equMOv9trf31Q8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$NotificationClicker$LBMGOladLjt5equMOv9trf31Q8s;->f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$NotificationClicker$LBMGOladLjt5equMOv9trf31Q8s;->f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->lambda$onClick$0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method
