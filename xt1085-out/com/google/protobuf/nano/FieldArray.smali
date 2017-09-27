.class public final Lcom/google/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DELETED:Lcom/google/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/google/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 54
    return-void
.end method

.method constructor <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    .line 65
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 66
    new-array v0, p1, [Lcom/google/protobuf/nano/FieldData;

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 67
    iput v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 63
    return-void
.end method

.method private arrayEquals([I[II)Z
    .registers 7
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "size"    # I

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_e

    .line 261
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_b

    .line 262
    const/4 v1, 0x0

    return v1

    .line 260
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_e
    const/4 v1, 0x1

    return v1
.end method

.method private arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z
    .registers 7
    .param p1, "a"    # [Lcom/google/protobuf/nano/FieldData;
    .param p2, "b"    # [Lcom/google/protobuf/nano/FieldData;
    .param p3, "size"    # I

    .prologue
    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_12

    .line 270
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 271
    const/4 v1, 0x0

    return v1

    .line 269
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method private binarySearch(I)I
    .registers 7
    .param p1, "value"    # I

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "lo":I
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v4, -0x1

    .line 244
    .local v0, "hi":I
    :goto_5
    if-gt v1, v0, :cond_1a

    .line 245
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 246
    .local v2, "mid":I
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v4, v2

    .line 248
    .local v3, "midVal":I
    if-ge v3, p1, :cond_14

    .line 249
    add-int/lit8 v1, v2, 0x1

    goto :goto_5

    .line 250
    :cond_14
    if-le v3, p1, :cond_19

    .line 251
    add-int/lit8 v0, v2, -0x1

    goto :goto_5

    .line 253
    :cond_19
    return v2

    .line 256
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1a
    not-int v4, v1

    return v4
.end method

.method private gc()V
    .registers 8

    .prologue
    .line 97
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 98
    .local v2, "n":I
    const/4 v3, 0x0

    .line 99
    .local v3, "o":I
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 100
    .local v1, "keys":[I
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 102
    .local v5, "values":[Lcom/google/protobuf/nano/FieldData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_20

    .line 103
    aget-object v4, v5, v0

    .line 105
    .local v4, "val":Lcom/google/protobuf/nano/FieldData;
    sget-object v6, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v4, v6, :cond_1d

    .line 106
    if-eq v0, v3, :cond_1b

    .line 107
    aget v6, v1, v0

    aput v6, v1, v3

    .line 108
    aput-object v4, v5, v3

    .line 109
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 112
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 102
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 116
    .end local v4    # "val":Lcom/google/protobuf/nano/FieldData;
    :cond_20
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 117
    iput v3, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 96
    return-void
.end method

.method private idealByteArraySize(I)I
    .registers 5
    .param p1, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 233
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_14

    .line 234
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_11

    .line 235
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    return v1

    .line 233
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 237
    :cond_14
    return p1
.end method

.method private idealIntArraySize(I)I
    .registers 3
    .param p1, "need"    # I

    .prologue
    .line 229
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final clone()Lcom/google/protobuf/nano/FieldArray;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    new-instance v0, Lcom/google/protobuf/nano/FieldArray;

    invoke-direct {v0, v2}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 282
    .local v0, "clone":Lcom/google/protobuf/nano/FieldArray;
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    invoke-static {v3, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v2, :cond_29

    .line 284
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v3, v3, v1

    if-eqz v3, :cond_26

    .line 285
    iget-object v3, v0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/protobuf/nano/FieldData;->clone()Lcom/google/protobuf/nano/FieldData;

    move-result-object v4

    aput-object v4, v3, v1

    .line 283
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 288
    :cond_29
    iput v2, v0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 289
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->clone()Lcom/google/protobuf/nano/FieldArray;

    move-result-object v0

    return-object v0
.end method

.method dataAt(I)Lcom/google/protobuf/nano/FieldData;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 192
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 195
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-ne p1, p0, :cond_5

    .line 201
    const/4 v1, 0x1

    return v1

    .line 203
    :cond_5
    instance-of v2, p1, Lcom/google/protobuf/nano/FieldArray;

    if-nez v2, :cond_a

    .line 204
    return v1

    :cond_a
    move-object v0, p1

    .line 207
    check-cast v0, Lcom/google/protobuf/nano/FieldArray;

    .line 208
    .local v0, "other":Lcom/google/protobuf/nano/FieldArray;
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_18

    .line 209
    return v1

    .line 211
    :cond_18
    iget-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v3, v0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 212
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v2, v0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget v3, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v1, v2, v3}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z

    move-result v1

    .line 211
    :cond_2e
    return v1
.end method

.method get(I)Lcom/google/protobuf/nano/FieldData;
    .registers 5
    .param p1, "fieldNumber"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 77
    .local v0, "i":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v1, v2, :cond_10

    .line 78
    :cond_e
    const/4 v1, 0x0

    return-object v1

    .line 80
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 217
    iget-boolean v2, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v2, :cond_7

    .line 218
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 220
    :cond_7
    const/16 v1, 0x11

    .line 221
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v2, :cond_25

    .line 222
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 223
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldData;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 225
    :cond_25
    return v1
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method put(ILcom/google/protobuf/nano/FieldData;)V
    .registers 11
    .param p1, "fieldNumber"    # I
    .param p2, "data"    # Lcom/google/protobuf/nano/FieldData;

    .prologue
    const/4 v6, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 127
    .local v0, "i":I
    if-ltz v0, :cond_c

    .line 128
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 124
    :goto_b
    return-void

    .line 130
    :cond_c
    not-int v0, v0

    .line 132
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v4, :cond_22

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v4, v4, v0

    sget-object v5, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v4, v5, :cond_22

    .line 133
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    .line 134
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 135
    return-void

    .line 138
    :cond_22
    iget-boolean v4, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v4, :cond_35

    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_35

    .line 139
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 142
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v4

    not-int v0, v4

    .line 145
    :cond_35
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_5c

    .line 146
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    .line 148
    .local v1, "n":I
    new-array v2, v1, [I

    .line 149
    .local v2, "nkeys":[I
    new-array v3, v1, [Lcom/google/protobuf/nano/FieldData;

    .line 151
    .local v3, "nvalues":[Lcom/google/protobuf/nano/FieldData;
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 155
    iput-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 158
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Lcom/google/protobuf/nano/FieldData;
    :cond_5c
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_79

    .line 159
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :cond_79
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    .line 164
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 165
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    goto :goto_b
.end method

.method remove(I)V
    .registers 5
    .param p1, "fieldNumber"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 90
    .local v0, "i":I
    if-ltz v0, :cond_17

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_17

    .line 91
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    aput-object v2, v1, v0

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 87
    :cond_17
    return-void
.end method

.method size()I
    .registers 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 175
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 178
    :cond_7
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return v0
.end method
