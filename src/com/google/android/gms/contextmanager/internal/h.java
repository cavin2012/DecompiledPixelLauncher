// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class h implements Parcelable$Creator
{
    static void MS(final QueryFilterParameters queryFilterParameters, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, queryFilterParameters.MO());
        a.fj(parcel, 2, queryFilterParameters.MM());
        a.fj(parcel, 3, queryFilterParameters.ML());
        a.fn(parcel, 4, queryFilterParameters.MN(), false);
        a.fe(parcel, ey);
    }
    
    public QueryFilterParameters[] MQ(final int n) {
        return new QueryFilterParameters[n];
    }
    
    public QueryFilterParameters MR(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        int[] fk = null;
        int fn2 = 0;
        int fn3 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn3 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 4: {
                    fk = b.fK(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new QueryFilterParameters(fn3, fn2, fn, fk);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
}
