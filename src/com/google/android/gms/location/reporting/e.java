// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.a;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class e implements Parcelable$Creator
{
    static void FW(final UploadRequestResult uploadRequestResult, final Parcel parcel, final int n) {
        final int ey = a.eY(parcel);
        a.fj(parcel, 1, uploadRequestResult.Gj());
        a.fj(parcel, 2, uploadRequestResult.Gh());
        a.fw(parcel, 3, uploadRequestResult.Gi());
        a.fe(parcel, ey);
    }
    
    public UploadRequestResult createFromParcel(final Parcel parcel) {
        int fn = 0;
        final int fj = b.fJ(parcel);
        long fl = 0L;
        int fn2 = 0;
        while (parcel.dataPosition() < fj) {
            final int fs = b.fS(parcel);
            switch (b.ga(fs)) {
                default: {
                    b.fA(parcel, fs);
                    continue;
                }
                case 1: {
                    fn2 = b.fN(parcel, fs);
                    continue;
                }
                case 2: {
                    fn = b.fN(parcel, fs);
                    continue;
                }
                case 3: {
                    fl = b.fL(parcel, fs);
                    continue;
                }
            }
        }
        if (parcel.dataPosition() == fj) {
            return new UploadRequestResult(fn2, fn, fl);
        }
        throw new zza$zza(new StringBuilder(37).append("Overread allowed size end=").append(fj).toString(), parcel);
    }
    
    public UploadRequestResult[] newArray(final int n) {
        return new UploadRequestResult[n];
    }
}