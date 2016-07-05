package serve;
import java.util.Set;

import javax.ws.rs.Path;
import javax.ws.rs.core.*;

@javax.ws.rs.ApplicationPath("rest")
public class ApplicationConfig extends Application {

	@Override
	public Set<Class<?>> getClasses(){
	Set<Class<?>> resources = new java.util.HashSet<>();
	addRestResourceClasses(resources)	;
	return resources;
	
}
	
	public void addRestResourceClasses(Set<Class<?>> resources){
		resources.add(serve.ApplicationConfig.class);
		
		
	}
}
