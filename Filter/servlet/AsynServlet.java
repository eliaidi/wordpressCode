package com.servlet;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * Created by wxm-Imperio.
 */
//设置Servlet支持异步
@WebServlet(name = "AsynServlet", asyncSupported = true)
public class AsynServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Servlet执行开始时间" + new Date());
		//实现异步操作
		AsyncContext context  = request.startAsync();
		//开启异步线程
		new Thread(new Executor(context)).start();
		System.out.println("Servlet执行结束时间" + new Date());
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	//内部类模拟线程
	public class Executor implements Runnable {

		private AsyncContext context;
		//实现构造方法
		public Executor(AsyncContext context) {
			this.context = context;
		}

		@Override
		public void run() {
			//执行相关的复杂业务
			try {
				Thread.sleep(1000 * 10);

				//context.getRequest();
				//context.getResponse();

				System.out.println("业务执行完成时间" + new Date());
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
