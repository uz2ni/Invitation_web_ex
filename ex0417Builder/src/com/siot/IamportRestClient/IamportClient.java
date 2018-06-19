package com.siot.IamportRestClient;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.siot.IamportRestClient.request.AgainPaymentData;
import com.siot.IamportRestClient.request.AuthData;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.request.OnetimePaymentData;
import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;
import com.siot.IamportRestClient.request.UnscheduleData;
import com.siot.IamportRestClient.request.escrow.EscrowLogisData;
import com.siot.IamportRestClient.request.escrow.EscrowLogisInvoiceData;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.Certification;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.PagedDataList;
import com.siot.IamportRestClient.response.Payment;
import com.siot.IamportRestClient.response.PaymentBalance;
import com.siot.IamportRestClient.response.PaymentBalanceEntry;
import com.siot.IamportRestClient.response.Schedule;
import com.siot.IamportRestClient.response.escrow.EscrowLogisInvoice;
import com.siot.IamportRestClient.serializer.BalanceEntrySerializer;
import com.siot.IamportRestClient.serializer.EscrowInvoiceEntrySerializer;
import com.siot.IamportRestClient.serializer.ScheduleEntrySerializer;

import okhttp3.OkHttpClient;
import retrofit2.Call;
import retrofit2.HttpException;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class IamportClient {

	public static final String API_URL = "https://api.iamport.kr";
	protected String api_key = "9339366943186429";
	protected String api_secret = "dojJbXe9lx5GcHCC4KvJbKEoDjBfYNNbb7Vm49wqHB6TjIwot28ENM2r5DG3rtfCAaZFkv517cVqVrOo";
	protected Iamport iamport = null;
	
	public IamportClient(String api_key, String api_secret) {
		this.api_key = api_key;
		this.api_secret = api_secret;
		this.iamport = this.create();
	}
	
	public IamportResponse<AccessToken> getAuth() {
		Call<IamportResponse<AccessToken>> call = this.iamport.token( new AuthData(this.api_key, this.api_secret) );
		try {
			Response<IamportResponse<AccessToken>> response = call.execute();
			System.out.println("성공");
			
			if ( !response.isSuccessful() )	throw new HttpException(response); //200이 아닌 경우에는 throw RuntimeException 

			return response.body();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public IamportResponse<PaymentBalance> paymentBalanceByImpUid(String imp_uid) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<PaymentBalance>> call = this.iamport.balance_by_imp_uid(auth.getToken(), imp_uid);
			
			try {
				Response<IamportResponse<PaymentBalance>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	public IamportResponse<Payment> paymentByImpUid(String imp_uid) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<Payment>> call = this.iamport.payment_by_imp_uid(auth.getToken(), imp_uid);
			
			try {
				Response<IamportResponse<Payment>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	public IamportResponse<PagedDataList<Payment>> paymentsByStatus(String status) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<PagedDataList<Payment>>> call = this.iamport.payments_by_status(auth.getToken(), status);
			
			try {
				Response<IamportResponse<PagedDataList<Payment>>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	public IamportResponse<Payment> cancelPaymentByImpUid(CancelData cancel_data) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<Payment>> call = this.iamport.cancel_payment(auth.getToken(), cancel_data);
			
			try {
				Response<IamportResponse<Payment>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	public IamportResponse<Payment> onetimePayment(OnetimePaymentData onetime_data) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<Payment>> call = this.iamport.onetime_payment(auth.getToken(), onetime_data);
			
			try {
				Response<IamportResponse<Payment>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	public IamportResponse<Payment> againPayment(AgainPaymentData again_data) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<Payment>> call = this.iamport.again_payment(auth.getToken(), again_data);
			
			try {
				Response<IamportResponse<Payment>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	public IamportResponse<List<Schedule>> subscribeSchedule(ScheduleData schedule_data) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<List<Schedule>>> call = this.iamport.schedule_subscription(auth.getToken(), schedule_data);
			
			try {
				Response<IamportResponse<List<Schedule>>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	public IamportResponse<List<Schedule>> unsubscribeSchedule(UnscheduleData unschedule_data) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<List<Schedule>>> call = this.iamport.unschedule_subscription(auth.getToken(), unschedule_data);
			
			try {
				Response<IamportResponse<List<Schedule>>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	/* 본인인증 */
	public IamportResponse<Certification> certificationByImpUid(String imp_uid) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<Certification>> call = this.iamport.certification_by_imp_uid(auth.getToken(), imp_uid);
			
			try {
				Response<IamportResponse<Certification>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	/* 에스크로 배송처리 */
	public IamportResponse<EscrowLogisInvoice> postEscrowLogis(String imp_uid, EscrowLogisData logis_data) {
		AccessToken auth = getAuth().getResponse();
		if ( auth != null ) {
			Call<IamportResponse<EscrowLogisInvoice>> call = this.iamport.post_escrow_logis(auth.getToken(), imp_uid, logis_data);
			
			try {
				Response<IamportResponse<EscrowLogisInvoice>> response = call.execute();
				if ( response.isSuccessful() ) {
					return response.body();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	protected Iamport create() {
		OkHttpClient client = new OkHttpClient.Builder()
				.readTimeout(30, TimeUnit.SECONDS)
				.connectTimeout(10, TimeUnit.SECONDS)
				.build();
		
		Retrofit retrofit = new Retrofit.Builder()
								.baseUrl(API_URL)
								.addConverterFactory(buildGsonConverter())
								.client(client)
								.build();
		
		return retrofit.create(Iamport.class);
	}
	
	protected GsonConverterFactory buildGsonConverter() {
        GsonBuilder gsonBuilder = new GsonBuilder();

        // Adding custom deserializers
        Object escrowInvoiceStrategy = new EscrowInvoiceEntrySerializer();
        
        gsonBuilder.registerTypeAdapter(ScheduleEntry.class, new ScheduleEntrySerializer());
        gsonBuilder.registerTypeAdapter(Schedule.class, new ScheduleEntrySerializer());
        gsonBuilder.registerTypeAdapter(PaymentBalanceEntry.class, new BalanceEntrySerializer());
        gsonBuilder.registerTypeAdapter(EscrowLogisInvoiceData.class, escrowInvoiceStrategy);
        gsonBuilder.registerTypeAdapter(EscrowLogisInvoice.class, escrowInvoiceStrategy);
        
        Gson myGson = gsonBuilder.create();

        return GsonConverterFactory.create(myGson);
    }
	
}
