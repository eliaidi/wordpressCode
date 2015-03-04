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
//����Servlet֧���첽
@WebServlet(name = "AsynServlet", asyncSupported = true)
public class AsynServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Servletִ�п�ʼʱ��" + new Date());
		//ʵ���첽����
		AsyncContext context  = request.startAsync();
		//�����첽�߳�
		new Thread(new Executor(context)).start();
		System.out.println("Servletִ�н���ʱ��" + new Date());
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	//�ڲ���ģ���߳�
	public class Executor implements Runnable {

		private AsyncContext context;
		//ʵ�ֹ��췽��
		public Executor(AsyncContext context) {
			this.context = context;
		}

		@Override
		public void run() {
			//ִ����صĸ���ҵ��
			try {
				Thread.sleep(1000 * 10);

				//context.getRequest();
				//context.getResponse();

				System.out.println("ҵ��ִ�����ʱ��" + new Date());
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
