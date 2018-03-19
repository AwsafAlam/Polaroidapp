.class Lcom/app/view/PreviewView$36;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    .line 2081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2085
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b003b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    check-cast v14, Landroid/app/Activity;

    .line 2087
    .local v14, "mActivity":Landroid/app/Activity;
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-class v21, Lmacrochip/app/newpl1200/WelcomeActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2088
    .local v15, "mainIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2089
    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 2475
    .end local v14    # "mActivity":Landroid/app/Activity;
    .end local v15    # "mainIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2091
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0042

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 2092
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2093
    .local v11, "ishide":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v11}, Lcom/app/view/PreviewView;->access$93(Lcom/app/view/PreviewView;I)V

    goto :goto_0

    .line 2094
    .end local v11    # "ishide":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b003e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    .line 2096
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2098
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-class v21, Lmacrochip/app/newpl1200/SnapshotActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2099
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2101
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b003d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2102
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2104
    .local v17, "state":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$79(Lcom/app/view/PreviewView;I)V

    goto/16 :goto_0

    .line 2105
    .end local v17    # "state":Ljava/lang/Integer;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b003c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 2106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$80(Lcom/app/view/PreviewView;)V

    goto/16 :goto_0

    .line 2107
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b003f

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2108
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2109
    .restart local v17    # "state":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 2110
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    const/16 v20, 0x0

    :goto_1
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 2111
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$94(Lcom/app/view/PreviewView;)[I

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aget v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$95(Lcom/app/view/PreviewView;I)V

    goto/16 :goto_0

    .line 2110
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    goto :goto_1

    .line 2114
    .end local v17    # "state":Ljava/lang/Integer;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0040

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 2115
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2116
    .restart local v17    # "state":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 2118
    const v20, 0x7f020002

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2119
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$96(Lcom/app/view/PreviewView;I)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$83(Lcom/app/view/PreviewView;I)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$85(Lcom/app/view/PreviewView;I)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETLeftRocker;->setLock(Z)V

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETLeftRocker;->setYV(I)V

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETLeftRocker;->Refresh()V

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f0b000c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2130
    :cond_8
    const v20, 0x7f020003

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2131
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$96(Lcom/app/view/PreviewView;I)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETLeftRocker;->setLock(Z)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Let/song/ui/widgets/ETLeftRocker;->getMaxX()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETLeftRocker;->setXV(I)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Let/song/ui/widgets/ETLeftRocker;->getMaxY()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETLeftRocker;->setYV(I)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETLeftRocker;->Refresh()V

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$82(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETButton;->setStatus(Z)V

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$62(Lcom/app/view/PreviewView;)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f0b000c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2141
    .end local v17    # "state":Ljava/lang/Integer;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0041

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 2142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 2143
    .local v19, "tmpI":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v21, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/16 v20, 0x0

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$98(Lcom/app/view/PreviewView;I)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$65(Lcom/app/view/PreviewView;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$99(Lcom/app/view/PreviewView;)[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/app/view/PreviewView;->access$65(Lcom/app/view/PreviewView;)I

    move-result v21

    aget v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$65(Lcom/app/view/PreviewView;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETRightRocker;->setLock(Z)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETRightRocker;->setManual(Z)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$74(Lcom/app/view/PreviewView;F)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$74(Lcom/app/view/PreviewView;F)V

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETRightRocker;->getTop()I

    move-result v18

    .line 2153
    .local v18, "t":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETRightRocker;->getLeft()I

    move-result v12

    .line 2154
    .local v12, "l":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETRightRocker;->getRight()I

    move-result v16

    .line 2155
    .local v16, "r":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETRightRocker;->getBottom()I

    move-result v3

    .line 2156
    .local v3, "b":I
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [I

    .line 2157
    .local v13, "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Let/song/ui/widgets/ETRightRocker;->getLocationOnScreen([I)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v20

    const/16 v21, 0x1

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v20

    const/16 v21, 0x0

    aget v21, v13, v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v22, v16, v12

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/app/view/PreviewView;->access$66(Lcom/app/view/PreviewView;)Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v22, v3, v18

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 2143
    .end local v3    # "b":I
    .end local v12    # "l":I
    .end local v13    # "location":[I
    .end local v16    # "r":I
    .end local v18    # "t":I
    :cond_a
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 2170
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$100(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETButton;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 2171
    .restart local v11    # "ishide":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v0, v11, :cond_c

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETRightRocker;->setVisibility(I)V

    .line 2174
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETRightRocker;->getTop()I

    move-result v18

    .line 2175
    .restart local v18    # "t":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETRightRocker;->getLeft()I

    move-result v12

    .line 2176
    .restart local v12    # "l":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETRightRocker;->getRight()I

    move-result v16

    .line 2177
    .restart local v16    # "r":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETRightRocker;->getBottom()I

    move-result v3

    .line 2178
    .restart local v3    # "b":I
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v13, v0, [I

    .line 2179
    .restart local v13    # "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Let/song/ui/widgets/ETRightRocker;->getLocationOnScreen([I)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETRightRocker;->setLock(Z)V

    .line 2186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETRightRocker;->setManual(Z)V

    goto/16 :goto_0

    .line 2188
    .end local v3    # "b":I
    .end local v11    # "ishide":I
    .end local v12    # "l":I
    .end local v13    # "location":[I
    .end local v16    # "r":I
    .end local v18    # "t":I
    .end local v19    # "tmpI":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0043

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 2189
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2190
    .restart local v17    # "state":Ljava/lang/Integer;
    const/16 v7, 0x64

    .line 2191
    .local v7, "delay":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-nez v20, :cond_11

    .line 2193
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2195
    sget v20, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    sget v20, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 2197
    :cond_e
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    aput-byte v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 2200
    const-wide/16 v20, 0x64

    :try_start_0
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2201
    :catch_0
    move-exception v8

    .line 2203
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 2206
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_f
    sget v20, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 2209
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$81(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    const v21, 0x7f020029

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$101(Lcom/app/view/PreviewView;)V

    .line 2214
    :try_start_1
    const-string v6, "VideoSource0.Imaging.Mirror=b:0\r\n"

    .line 2215
    .local v6, "cmdStrMirror":Ljava/lang/String;
    const-string v5, "VideoSource0.Imaging.Flip=b:0\r\n"

    .line 2216
    .local v5, "cmdStrFlip":Ljava/lang/String;
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2218
    const-wide/16 v20, 0x1e

    :try_start_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2223
    :goto_3
    :try_start_3
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2225
    const-wide/16 v20, 0x64

    :try_start_4
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2232
    :goto_4
    :try_start_5
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2234
    const-wide/16 v20, 0x1e

    :try_start_6
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2239
    :goto_5
    :try_start_7
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 2241
    const-wide/16 v20, 0x1e

    :try_start_8
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 2242
    :catch_1
    move-exception v8

    .line 2244
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 2246
    .end local v5    # "cmdStrFlip":Ljava/lang/String;
    .end local v6    # "cmdStrMirror":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v8

    .line 2248
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2219
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "cmdStrFlip":Ljava/lang/String;
    .restart local v6    # "cmdStrMirror":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 2221
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 2226
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v8

    .line 2228
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 2235
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v8

    .line 2237
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 2251
    .end local v5    # "cmdStrFlip":Ljava/lang/String;
    .end local v6    # "cmdStrMirror":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_10
    sget v20, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2253
    const-string v4, "MIRROR=0"

    .line 2254
    .local v4, "cmdStr":Ljava/lang/String;
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2262
    .end local v4    # "cmdStr":Ljava/lang/String;
    :cond_11
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2264
    sget v20, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    sget v20, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 2266
    :cond_12
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    aput-byte v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 2268
    const-wide/16 v20, 0x64

    :try_start_b
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 2269
    :catch_6
    move-exception v8

    .line 2271
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 2274
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_13
    sget v20, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 2276
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$81(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    const v21, 0x7f020029

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETButton;->setBackgroundResource(I)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$101(Lcom/app/view/PreviewView;)V

    .line 2281
    :try_start_c
    const-string v6, "VideoSource0.Imaging.Mirror=b:1\r\n"

    .line 2282
    .restart local v6    # "cmdStrMirror":Ljava/lang/String;
    const-string v5, "VideoSource0.Imaging.Flip=b:1\r\n"

    .line 2283
    .restart local v5    # "cmdStrFlip":Ljava/lang/String;
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 2285
    const-wide/16 v20, 0x1e

    :try_start_d
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 2290
    :goto_6
    :try_start_e
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 2292
    const-wide/16 v20, 0x64

    :try_start_f
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 2299
    :goto_7
    :try_start_10
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 2301
    const-wide/16 v20, 0x1e

    :try_start_11
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 2306
    :goto_8
    :try_start_12
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 2308
    const-wide/16 v20, 0x1e

    :try_start_13
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_0

    .line 2309
    :catch_7
    move-exception v8

    .line 2311
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    :try_start_14
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_0

    .line 2313
    .end local v5    # "cmdStrFlip":Ljava/lang/String;
    .end local v6    # "cmdStrMirror":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_8
    move-exception v8

    .line 2315
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2286
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "cmdStrFlip":Ljava/lang/String;
    .restart local v6    # "cmdStrMirror":Ljava/lang/String;
    :catch_9
    move-exception v8

    .line 2288
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_15
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 2293
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_a
    move-exception v8

    .line 2295
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 2302
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_b
    move-exception v8

    .line 2304
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    goto :goto_8

    .line 2318
    .end local v5    # "cmdStrFlip":Ljava/lang/String;
    .end local v6    # "cmdStrMirror":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_14
    sget v20, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2320
    const-string v4, "MIRROR=1"

    .line 2321
    .restart local v4    # "cmdStr":Ljava/lang/String;
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lmacrochip/app/newpl1200/SysApp;->writeTCPCmd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2326
    .end local v4    # "cmdStr":Ljava/lang/String;
    .end local v7    # "delay":I
    .end local v17    # "state":Ljava/lang/Integer;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0044

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 2327
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2328
    .local v10, "is3D":I
    if-nez v10, :cond_17

    .line 2330
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2332
    sget v20, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 2334
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/fh/lib/FHSDK;->set3DMode(Z)V

    .line 2338
    :goto_9
    const v20, 0x7f020012

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$61(Lcom/app/view/PreviewView;)V

    goto/16 :goto_0

    .line 2337
    :cond_16
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v20

    sget v21, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_3D:I

    invoke-virtual/range {v20 .. v21}, Lcom/app/Interface/MyMediaCodec;->setShowMode(I)V

    goto :goto_9

    .line 2343
    :cond_17
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2344
    sget v20, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 2346
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/fh/lib/FHSDK;->set3DMode(Z)V

    .line 2350
    :goto_a
    const v20, 0x7f020011

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/app/view/PreviewView;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2349
    :cond_18
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v20

    sget v21, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_FULLSCREEN:I

    invoke-virtual/range {v20 .. v21}, Lcom/app/Interface/MyMediaCodec;->setShowMode(I)V

    goto :goto_a

    .line 2357
    .end local v10    # "is3D":I
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0045

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 2358
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2359
    .restart local v17    # "state":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 2361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$85(Lcom/app/view/PreviewView;I)V

    .line 2362
    const v20, 0x7f020032

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2363
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$102(Lcom/app/view/PreviewView;I)V

    goto/16 :goto_0

    .line 2368
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$83(Lcom/app/view/PreviewView;I)V

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$85(Lcom/app/view/PreviewView;I)V

    .line 2370
    const v20, 0x7f020033

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2371
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$102(Lcom/app/view/PreviewView;I)V

    goto/16 :goto_0

    .line 2374
    .end local v17    # "state":Ljava/lang/Integer;
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0046

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 2375
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2376
    .restart local v17    # "state":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 2378
    const v20, 0x7f020026

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2379
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$87(Lcom/app/view/PreviewView;I)V

    goto/16 :goto_0

    .line 2384
    :cond_1c
    const v20, 0x7f020027

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2385
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$87(Lcom/app/view/PreviewView;I)V

    goto/16 :goto_0

    .line 2388
    .end local v17    # "state":Ljava/lang/Integer;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0035

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 2389
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$103(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Let/song/ui/widgets/ETButton;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 2391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$85(Lcom/app/view/PreviewView;I)V

    .line 2393
    const-wide/16 v20, 0x12c

    :try_start_16
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_c

    .line 2398
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$83(Lcom/app/view/PreviewView;I)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$85(Lcom/app/view/PreviewView;I)V

    .line 2400
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$104(Lcom/app/view/PreviewView;)V

    goto/16 :goto_0

    .line 2394
    :catch_c
    move-exception v8

    .line 2396
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    .line 2402
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0036

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$85(Lcom/app/view/PreviewView;I)V

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$83(Lcom/app/view/PreviewView;I)V

    .line 2405
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$105(Lcom/app/view/PreviewView;)V

    goto/16 :goto_0

    .line 2422
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0047

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$89(Lcom/app/view/PreviewView;I)V

    .line 2426
    const v20, 0x7f02001a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2427
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$106(Lcom/app/view/PreviewView;)V

    goto/16 :goto_0

    .line 2429
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v20

    const v21, 0x7f0b0037

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2431
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 2432
    .restart local v17    # "state":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$107(Lcom/app/view/PreviewView;Z)V

    .line 2435
    const v20, 0x7f02006a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2436
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETRightRocker;->setMode(I)V

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETPlaneRocker;->setVisibility(I)V

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v20

    const/16 v21, 0x7f

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETPlaneRocker;->setMaxX(I)V

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v20

    const/16 v21, 0x7f

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETPlaneRocker;->setMaxY(I)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETPlaneRocker;->setMode(I)V

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$109(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTBTrim;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETTBTrim;->setVisibility(I)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$110(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTrim;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETTrim;->setVisibility(I)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$100(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$111(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2453
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/app/view/PreviewView;->access$107(Lcom/app/view/PreviewView;Z)V

    .line 2454
    const v20, 0x7f02006b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2455
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETRightRocker;->setMode(I)V

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETPlaneRocker;->setVisibility(I)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETPlaneRocker;->setMode(I)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$109(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTBTrim;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETTBTrim;->setVisibility(I)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$110(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTrim;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETTrim;->setVisibility(I)V

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$100(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/app/view/PreviewView$36;->this$0:Lcom/app/view/PreviewView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/app/view/PreviewView;->access$111(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Let/song/ui/widgets/ETButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method
