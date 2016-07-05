package by.it.akhmelev.jd03_02;

import by.it.vasilevich.jd02_05.demo.Resourses.Res;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

public class Ex_03_Meta_Count {
    public static void main(String[] args) {
        try (Connection connection = ConnectionCreator.getConnection();
             Statement statement = connection.createStatement();) {

            //получаем пользователей. Если неизвестно число полей, то нужно получить метаданные
            ResultSet resultSet = statement.executeQuery("select * from users;");
            while (resultSet.next()) {
                ResultSetMetaData resultSetMetaData=resultSet.getMetaData();
                int columnCount=resultSetMetaData.getColumnCount();
                for (int i = 1; i < columnCount+1; i++) {
                System.out.print(
                        resultSetMetaData.getColumnLabel(i) + "=" +
                                resultSet.getString(i) + "\t"
                );
                }
                System.out.println();
            }
            //общее число записей
            resultSet=statement.executeQuery("SELECT COUNT(*) FROM users");
            if (resultSet.next())
                System.out.println("Всего записей: "+resultSet.getInt(1));

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
