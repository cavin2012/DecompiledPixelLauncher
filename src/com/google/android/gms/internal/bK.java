// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.g;
import java.util.HashMap;
import com.google.android.gms.common.internal.Q;
import java.util.Collection;
import java.util.Collections;
import com.google.android.gms.common.api.j;
import java.util.concurrent.Future;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import android.util.Log;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.HashSet;
import android.os.Bundle;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.a;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.ArrayList;
import android.content.Context;
import com.google.android.gms.common.internal.l;
import android.os.Looper;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.h;
import java.util.Iterator;
import com.google.android.gms.common.internal.c;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;
import java.util.Map;

class bk extends bP
{
    final /* synthetic */ bH tU;
    private final Map tV;
    
    public bk(final bH tu, final Map tv) {
        this.tU = tu;
        super(tu, null);
        this.tV = tv;
    }
    
    public void ys() {
        int n = 1;
        final float n2 = Float.MIN_VALUE;
        int nn = 0;
        final Iterator<i> iterator = this.tV.keySet().iterator();
        int n3 = n;
        float n4 = n2;
        int n5 = 0;
        float n6 = 0.0f;
        while (true) {
            while (iterator.hasNext()) {
                final i i = iterator.next();
                int n7;
                float n8;
                int n9;
                float n10;
                if (!i.ei()) {
                    n7 = 0;
                    n8 = 0.0f;
                    n9 = n5;
                    n10 = n6;
                }
                else if (((ce)this.tV.get(i)).wv != 0) {
                    n7 = n3;
                    n8 = n4;
                    n9 = n;
                    n10 = n2;
                }
                else {
                    n5 = n;
                    if (n5 != 0) {
                        nn = this.tU.uV.nN(this.tU.mContext);
                    }
                    if (nn != 0 && (n != 0 || n3 != 0)) {
                        this.tU.uY.BR(new bj(this, this.tU, new ConnectionResult(nn, null)));
                        return;
                    }
                    if (this.tU.uW) {
                        this.tU.uQ.yu();
                    }
                    for (final i j : this.tV.keySet()) {
                        final c c = this.tV.get(j);
                        if (j.ei() && nn != 0) {
                            this.tU.uY.BR(new ch(this, this.tU, c));
                        }
                        else {
                            j.ee(c);
                        }
                    }
                    return;
                }
                n5 = n9;
                n6 = n10;
                n3 = n7;
                n4 = n8;
            }
            n = 0;
            continue;
        }
    }
}
