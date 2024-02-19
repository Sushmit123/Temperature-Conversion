package User.temp.version;

//ConverterServlet.java
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ConverterServlet")
public class ConverterServlet extends HttpServlet {
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     // Get user inputs
     double temperature = Double.parseDouble(request.getParameter("temperature"));


      //Perform conversions

     double convertedFahrenheit = convertToFahrenheit(temperature);
     double convertedKelvin = convertToKelvin(temperature);

     // Set converted values in request attributes

     request.setAttribute("convertedFahrenheit", convertedFahrenheit);
     request.setAttribute("convertedKelvin", convertedKelvin);

     // Forward the request to the index.jsp page
     request.getRequestDispatcher("index.jsp").forward(request, response);
 }

 

 private double convertToFahrenheit(double celsius) {
     return celsius * 9 / 5 + 32;
 }

 private double convertToKelvin(double celsius) {
     return celsius + 273.15;
 }
}
