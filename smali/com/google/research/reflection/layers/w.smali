.class Lcom/google/research/reflection/layers/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/layers/c;


# instance fields
.field final synthetic Oo:Lcom/google/research/reflection/layers/s;

.field final synthetic Op:Lcom/google/research/reflection/layers/b;

.field final synthetic Oq:Lcom/google/research/reflection/layers/b;

.field final synthetic Or:I

.field final synthetic Os:[Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/layers/s;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/research/reflection/layers/w;->Oo:Lcom/google/research/reflection/layers/s;

    iput p2, p0, Lcom/google/research/reflection/layers/w;->Or:I

    iput-object p3, p0, Lcom/google/research/reflection/layers/w;->Os:[Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/research/reflection/layers/w;->Oq:Lcom/google/research/reflection/layers/b;

    iput-object p5, p0, Lcom/google/research/reflection/layers/w;->Op:Lcom/google/research/reflection/layers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vo(I)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget-object v2, p0, Lcom/google/research/reflection/layers/w;->Oo:Lcom/google/research/reflection/layers/s;

    iget v2, v2, Lcom/google/research/reflection/layers/s;->Og:I

    iget-object v3, p0, Lcom/google/research/reflection/layers/w;->Oo:Lcom/google/research/reflection/layers/s;

    iget v3, v3, Lcom/google/research/reflection/layers/s;->NU:I

    invoke-direct {v0, v2, v3}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 48
    iget-object v2, p0, Lcom/google/research/reflection/layers/w;->Oo:Lcom/google/research/reflection/layers/s;

    iget v2, v2, Lcom/google/research/reflection/layers/s;->NU:I

    mul-int v6, p1, v2

    move v2, v1

    .line 49
    :goto_0
    iget-object v3, p0, Lcom/google/research/reflection/layers/w;->Oo:Lcom/google/research/reflection/layers/s;

    iget v3, v3, Lcom/google/research/reflection/layers/s;->Og:I

    if-lt v2, v3, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/research/reflection/layers/w;->Oo:Lcom/google/research/reflection/layers/s;

    iget-object v1, v1, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    aget-object v1, v1, p1

    iget v2, p0, Lcom/google/research/reflection/layers/w;->Or:I

    iget-object v3, p0, Lcom/google/research/reflection/layers/w;->Os:[Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/research/reflection/layers/w;->Oq:Lcom/google/research/reflection/layers/b;

    iget-object v5, p0, Lcom/google/research/reflection/layers/w;->Op:Lcom/google/research/reflection/layers/b;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/research/reflection/layers/j;->Vt(I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v3, v1

    .line 50
    :goto_1
    iget-object v4, p0, Lcom/google/research/reflection/layers/w;->Oo:Lcom/google/research/reflection/layers/s;

    iget v4, v4, Lcom/google/research/reflection/layers/s;->NU:I

    if-lt v3, v4, :cond_1

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v4, p0, Lcom/google/research/reflection/layers/w;->Oo:Lcom/google/research/reflection/layers/s;

    iget-object v4, v4, Lcom/google/research/reflection/layers/s;->On:Lcom/google/research/reflection/layers/b;

    add-int v5, v6, v3

    invoke-virtual {v4, v1, v2, v5}, Lcom/google/research/reflection/layers/b;->Vc(ZII)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->Vd(ZIID)V

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
