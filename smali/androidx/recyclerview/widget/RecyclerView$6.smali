.class Landroidx/recyclerview/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 917
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "op"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 962
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 967
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 968
    goto :goto_0

    .line 964
    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 965
    goto :goto_0

    .line 974
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    goto :goto_0

    .line 970
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 972
    nop

    .line 977
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I

    .line 920
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 921
    .local v0, "vh":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 922
    return-object v1

    .line 926
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 930
    return-object v1

    .line 932
    :cond_1
    return-object v0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 952
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 953
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 954
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 986
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 987
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 988
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 992
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 994
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 995
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 937
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 938
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 939
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr v1, p2

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 940
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 945
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 946
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$6;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 947
    return-void
.end method

.method public onDispatchFirstPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 958
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 959
    return-void
.end method

.method public onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 981
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$6;->dispatchUpdate(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 982
    return-void
.end method