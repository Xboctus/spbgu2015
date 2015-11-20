import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.Random;

/**
 * Created by user on 19.11.2015.
 */
public class CheckLoseWin extends SimpleTagSupport {

    private String value;
    public void  setValue(String val){
        this.value = val;
    }
    public String getValue(){ return  value;}

    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        try{
            checking(value);
        }
        catch (NullStringExeption e)
        {
            e.printStackTrace();
        }
    }

    public boolean checking(String value)throws NullStringExeption {
        Random random = new Random();
        Integer num=0;
        try{
              num = Integer.parseInt(value);
        }catch (Exception e ){
            e.printStackTrace();
        }
        if ((value == "")||(num > 100)||(num<0)) throw new NullStringExeption("empty");
        else {

            if (num.equals(random.nextInt(101)))
                return true;
            else
                return false;
        }
    }
}
