<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>${basepackage}</groupId>
	<artifactId>${appName}</artifactId>
	<version>0.0.1-SNAPSHOT</version>
	<name>${appName}</name>
	<packaging>war</packaging>
	<description></description>

	<build>
		<finalName>${appName}</finalName>
		<resources>
			<resource>
				<directory>src/main/resources</directory>
				<filtering>true</filtering>
			</resource>
		</resources>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-compiler-plugin</artifactId>
				<configuration>
					<source>1.6</source>
					<target>1.6</target>
				</configuration>
			</plugin>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-war-plugin</artifactId>
				<configuration>
					<webResources>
						<resource>
                            <#noparse>
							<directory>${basedir}/src/main/java</directory>
                            </#noparse>
							<targetPath>WEB-INF/classes</targetPath>
							<includes>
								<include>**/*.properties</include>
								<include>**/*.xml</include>
								<include>**/*.css</include>
								<include>**/*.html</include>
							</includes>
						</resource>
					</webResources>
				</configuration>
			</plugin>
		</plugins>
	</build>

    <#noparse>
	<dependencies>
        <dependency><groupId>org.springframework</groupId><artifactId>spring-webmvc</artifactId><version>3.2.8.RELEASE</version></dependency>
        <dependency><groupId>org.springframework</groupId><artifactId>spring-context-support</artifactId><version>3.2.8.RELEASE</version></dependency>
        <dependency><groupId>org.springframework.data</groupId><artifactId>spring-data-jpa</artifactId><version>1.5.0.RELEASE</version></dependency>
        <dependency><groupId>org.aspectj</groupId><artifactId>aspectjweaver</artifactId><version>1.7.2</version></dependency>
        <dependency><groupId>org.hibernate</groupId><artifactId>hibernate-core</artifactId><version>4.2.4.Final</version></dependency>
        <dependency><groupId>org.hibernate</groupId><artifactId>hibernate-entitymanager</artifactId><version>4.2.4.Final</version></dependency>
        <dependency><groupId>com.google.guava</groupId><artifactId>guava</artifactId><version>11.0.2</version></dependency>
        <dependency><groupId>net.sf.ehcache</groupId><artifactId>ehcache-core</artifactId><version>2.6.3</version></dependency>
        <dependency><groupId>com.h2database</groupId><artifactId>h2</artifactId><version>1.3.172</version></dependency>
        <dependency><groupId>mysql</groupId><artifactId>mysql-connector-java</artifactId><version>5.1.16</version></dependency>
        <dependency><groupId>javax.servlet</groupId><artifactId>jstl</artifactId><version>1.1.1</version></dependency>
        <dependency><groupId>taglibs</groupId><artifactId>standard</artifactId><version>1.1.1</version></dependency>
        <dependency><groupId>org.nutz</groupId><artifactId>nutz</artifactId><version>1.b.48</version></dependency>
        <dependency><groupId>com.alibaba</groupId><artifactId>fastjson</artifactId><version>1.1.36</version></dependency>
        <dependency><groupId>org.freemarker</groupId><artifactId>freemarker</artifactId><version>2.3.19</version></dependency>
        <dependency><groupId>commons-codec</groupId><artifactId>commons-codec</artifactId><version>1.7</version></dependency>
        <dependency><groupId>commons-lang</groupId><artifactId>commons-lang</artifactId><version>2.6</version></dependency>
        <dependency><groupId>org.apache.httpcomponents</groupId><artifactId>httpclient</artifactId><version>4.3.1</version></dependency>
        <dependency><groupId>commons-validator</groupId><artifactId>commons-validator</artifactId><version>1.4.0</version></dependency>
        <dependency><groupId>commons-fileupload</groupId><artifactId>commons-fileupload</artifactId><version>1.3</version></dependency>

        <!--JSP相关-->
        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>jstl</artifactId>
            <version>1.1.1</version>
            <!--<scope>provided</scope>-->
        </dependency>
        <dependency>
            <groupId>taglibs</groupId>
            <artifactId>standard</artifactId>
            <version>1.1.1</version>
            <!--<scope>runtime</scope>-->
        </dependency>

        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>servlet-api</artifactId>
            <version>2.5</version>
            <scope>provided</scope>
        </dependency>

        <dependency>
            <groupId>jspapi</groupId>
            <artifactId>jsp-api</artifactId>
            <version>2.0</version>
            <scope>provided</scope>
        </dependency>
        <!--END JSP相关-->

        <dependency>
            <groupId>commons-logging</groupId>
            <artifactId>commons-logging-api</artifactId>
            <version>1.1</version>
        </dependency>

        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-log4j12</artifactId>
            <version>1.7.6</version>
        </dependency>
    </dependencies>
    </#noparse>

    <properties>
        <!-- redis 配置 -->
        <project.redis.host1>10.28.6.152</project.redis.host1>
        <project.redis.port1>6379</project.redis.port1>

        <!-- 数据库连接池配置文件 -->
        <project.dbpool.driverClass>org.mariadb.jdbc.Driver</project.dbpool.driverClass>
        <project.dbpool.jdbcUrl>jdbc:mysql://10.28.6.151:3307/dili_store?useUnicode=true&amp;characterEncoding=utf8</project.dbpool.jdbcUrl>
        <project.dbpool.username>root</project.dbpool.username>
        <project.dbpool.password>123456</project.dbpool.password>
        <project.dbpool.idleConnectionTestPeriodInMinutes>1</project.dbpool.idleConnectionTestPeriodInMinutes>
        <project.dbpool.idleMaxAgeInMinutes>4</project.dbpool.idleMaxAgeInMinutes>
        <project.dbpool.partitionCount>1</project.dbpool.partitionCount>
        <project.dbpool.maxConnectionsPerPartition>5</project.dbpool.maxConnectionsPerPartition>
        <project.dbpool.minConnectionsPerPartition>2</project.dbpool.minConnectionsPerPartition>
        <project.dbpool.acquireIncrement>2</project.dbpool.acquireIncrement>
        <project.dbpool.statementsCacheSize>50</project.dbpool.statementsCacheSize>
        <project.dbpool.releaseHelperThreads>3</project.dbpool.releaseHelperThreads>

    </properties>

    <profiles>
        <profile>
            <id>dev</id>
            <properties>
                <db.username>sa</db.username>
                <db.password> </db.password>
                <db.driver>org.h2.Driver</db.driver>
                <db.url>jdbc:h2:s:/db/test/db;AUTO_SERVER=TRUE</db.url>
                <jpa.hibernate.dialect>org.hibernate.dialect.H2Dialect</jpa.hibernate.dialect>


            </properties>
        </profile>
    </profiles>

</project>