package dto;

//所有ajax返回类型，封装Json结果
public class SeckillResult<T> {

	private boolean success;
	
	private String error;
	
	private T data;
	
	public SeckillResult(boolean success, String error) {
		super();
		this.success = success;
		this.error = error;
	}

	public SeckillResult(boolean success, T data) {
		super();
		this.success = success;
		this.data = data;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public SeckillResult(boolean success) {
		super();
		this.success = success;
	}


	
	
}
