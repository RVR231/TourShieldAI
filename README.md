# TourShieldAI 🛡️

A comprehensive blockchain-powered platform for secure tourism with KYC verification, digital identity management, and emergency response systems.

## 🌟 Features

### 🔐 Authentication & Security
- **Firebase Authentication** with email/password and social login
- **JWT Token Management** with secure refresh mechanisms
- **Role-based Access Control** (Admin, User, Responder)
- **Rate Limiting** and request timeout protection
- **Input Sanitization** and XSS protection

### 🆔 KYC & Digital Identity
- **Automated KYC Verification** with document upload
- **Admin Approval System** for identity verification
- **Blockchain-based Digital IDs** with automatic generation
- **QR Code Generation** for digital identity verification
- **Secure Document Storage** with Firebase integration

### ⛓️ Blockchain Integration
- **Ethereum Mainnet** integration via Infura
- **HD Deterministic Wallets** (BIP39 mnemonic generation)
- **ERC-20 Token Support** with balance tracking
- **Smart Contract Interactions** for identity management
- **Secure Private Key Management** with encryption

### 📱 User Interface
- **Modern React Frontend** with Vite build system
- **Responsive Design** with Tailwind CSS
- **Real-time Notifications** with Socket.IO
- **Interactive Charts** with Recharts
- **QR Code Scanner** for identity verification
- **Progressive Web App** capabilities

### 🚨 Emergency & Safety
- **Emergency Response System** with real-time alerts
- **Location-based Services** for tourist safety
- **Responder Dashboard** for emergency personnel
- **Notification System** with multiple channels

### 📊 Analytics & Monitoring
- **Admin Analytics Dashboard** with user metrics
- **System Health Monitoring** with uptime tracking
- **Comprehensive Logging** with Winston
- **Error Tracking** and performance monitoring

### 🎛️ Multi-Role Dashboard System
- **Main Admin Dashboard** - Full system control and management
- **Sub-Admin Dashboard** - Field operations and tourist assistance
- **User Dashboard** - Personal profile and blockchain wallet management

## 🏗️ Architecture

### Frontend (React + Vite)
```
client/
├── src/
│   ├── components/          # Reusable UI components
│   │   ├── Auth/           # Authentication components
│   │   ├── KYC/            # KYC verification components
│   │   ├── Blockchain/     # Blockchain interaction components
│   │   ├── Admin/          # Admin panel components
│   │   ├── Emergency/      # Emergency response components
│   │   ├── Wallet/         # Wallet management components
│   │   └── Analytics/      # Analytics and reporting
│   ├── dashboard/          # Dashboard layouts
│   ├── contexts/           # React contexts
│   ├── hooks/              # Custom React hooks
│   ├── utils/              # Utility functions
│   └── config/             # Configuration files
├── public/                 # Static assets
└── package.json
```

### Backend (Node.js + Express)
```
server/
├── routes/                 # API route handlers
│   ├── auth.js            # Authentication endpoints
│   ├── kyc.js             # KYC verification endpoints
│   ├── blockchain.js      # Blockchain interaction endpoints
│   ├── admin.js           # Admin management endpoints
│   ├── user.js            # User management endpoints
│   └── wallet.js          # Wallet management endpoints
├── middleware/            # Express middleware
│   ├── auth.js           # Authentication middleware
│   ├── errorHandler.js   # Global error handling
│   ├── rateLimiter.js    # Rate limiting
│   └── requestTimeout.js # Request timeout handling
├── config/               # Configuration files
│   └── firebase.js       # Firebase configuration
├── utils/                # Utility functions
├── logs/                 # Application logs
└── server.js             # Main server file
```

## 🎛️ Dashboard System Overview

SafeTourAI features three distinct dashboard interfaces, each tailored for specific user roles and responsibilities:

### 👑 Main Admin Dashboard
**Role**: System Administrator
**Access Level**: Full system control

**Key Features:**
- **User Management** - Complete user lifecycle management, role assignments, and account controls
- **Full KYC Management** - Review, approve, or reject KYC applications with detailed document verification
- **System Analytics** - Comprehensive metrics including user growth, KYC approval rates, and system performance
- **Security Panel** - Monitor security events, failed login attempts, and suspicious activities
- **Audit Logs** - Complete system audit trail with user actions and administrative changes
- **Database Management** - Direct database operations and data integrity monitoring
- **System Settings** - Global configuration management and feature toggles
- **Admin Activity Feed** - Real-time feed of all administrative actions across the platform

**Dashboard Components:**
```
dashboard-main-admin/
├── AdminDashboard.jsx        # Main dashboard layout
├── AdminNavbar.jsx          # Top navigation with admin tools
├── AdminSidebar.jsx         # Side navigation menu
├── AdminStatsCards.jsx      # Key metrics overview
├── AdminWelcomeBanner.jsx   # Personalized admin welcome
├── UserManagement.jsx       # Complete user administration
├── FullKYCManagement.jsx    # KYC review and approval system
├── SystemAnalytics.jsx      # Advanced analytics and reporting
├── SecurityPanel.jsx        # Security monitoring dashboard
├── AuditLogs.jsx           # System audit and logging
├── DatabaseManagement.jsx   # Database operations panel
├── SystemSettings.jsx       # Global system configuration
└── AdminActivityFeed.jsx    # Real-time admin activity stream
```

### 🛡️ Sub-Admin Dashboard
**Role**: Field Officer/Tourist Assistant
**Access Level**: Operational and tourist-facing functions

**Key Features:**
- **Digital ID Scanner** - Quick QR code scanning for tourist verification
- **Tourist Profile Viewer** - Access tourist information and travel history
- **Emergency Alerts** - Receive and respond to emergency situations
- **Incident Reporting** - Report and document incidents in the field
- **Quick Verification** - Fast-track identity verification for tourists
- **Patrol Activity Feed** - Track field activities and patrol updates

**Dashboard Components:**
```
dashboard-sub-admin/
├── SubAdminDashboard.jsx      # Main operational dashboard
├── SubAdminNavbar.jsx         # Field operations navigation
├── SubAdminSidebar.jsx        # Operational menu system
├── SubAdminStatsCards.jsx     # Field operation metrics
├── SubAdminWelcomeBanner.jsx  # Personalized field officer welcome
├── DigitalIdScanner.jsx       # QR code scanning interface
├── TouristProfileViewer.jsx   # Tourist information display
├── EmergencyAlerts.jsx        # Emergency notification system
├── IncidentReporting.jsx      # Incident documentation tool
├── QuickVerification.jsx      # Fast identity verification
└── PatrolActivityFeed.jsx     # Field activity tracking
```

### 👤 User Dashboard
**Role**: Tourist/End User
**Access Level**: Personal account and wallet management

**Key Features:**
- **Personal Profile Management** - Update personal information and travel preferences
- **Blockchain Wallet** - View balances, transaction history, and manage digital assets
- **Digital Identity** - Access and share digital ID with QR code generation
- **Activity Feed** - Personal activity history and notifications
- **Analytics Chart** - Personal travel analytics and spending insights
- **Quick Actions** - Fast access to common functions (payments, verification, etc.)
- **Responder Widget** - Emergency contact and assistance features

**Dashboard Components:**
```
dashboard-user/
├── Dashboard.jsx           # Main user dashboard layout
├── Navbar.jsx             # User navigation bar
├── Sidebar.jsx            # User menu system
├── StatsCards.jsx         # Personal statistics overview
├── WelcomeBanner.jsx      # Personalized user welcome
├── UserProfiles.jsx       # Comprehensive profile management
├── BlockchainPanel.jsx    # Wallet and blockchain interactions
├── ActivityFeed.jsx       # Personal activity timeline
├── AnalyticsChart.jsx     # Personal analytics and insights
├── QuickActions.jsx       # Common action shortcuts
└── ResponderWidget.jsx    # Emergency assistance interface
```

### 🔄 Dashboard Navigation Flow
- **Role-based Routing** - Automatic dashboard assignment based on user role
- **Seamless Switching** - Admins can switch between dashboard views
- **Responsive Design** - All dashboards optimized for desktop and mobile
- **Real-time Updates** - Live data synchronization across all dashboard types

## 🚀 Getting Started

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- Firebase project with Authentication enabled
- Ethereum wallet and Infura API key

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/RVR231/TourShieldAI/edit/main/README.md
   cd SafeTourAI
   ```

2. **Install backend dependencies**
   ```bash
   cd server
   npm install
   ```

3. **Install frontend dependencies**
   ```bash
   cd ../client
   npm install
   ```

4. **Environment Configuration**

   Create `.env` file in the server directory:
   ```env
   # Server Configuration
   PORT=5000
   NODE_ENV=development

   # Firebase Configuration
   FIREBASE_PROJECT_ID=your-project-id
   FIREBASE_PRIVATE_KEY=your-private-key
   FIREBASE_CLIENT_EMAIL=your-client-email

   # Blockchain Configuration
   INFURA_PROJECT_ID=your-infura-project-id
   ETHEREUM_NETWORK=mainnet
   MASTER_PRIVATE_KEY=your-master-private-key

   # JWT Configuration
   JWT_SECRET=your-jwt-secret
   JWT_EXPIRES_IN=24h

   # Email Configuration (optional)
   EMAIL_SERVICE=gmail
   EMAIL_USER=your-email@gmail.com
   EMAIL_PASS=your-app-password
   ```

   Create `.env` file in the client directory:
   ```env
   VITE_API_URL=http://localhost:5000
   VITE_FIREBASE_API_KEY=your-firebase-api-key
   VITE_FIREBASE_AUTH_DOMAIN=your-project.firebaseapp.com
   VITE_FIREBASE_PROJECT_ID=your-project-id
   ```

### Running the Application

1. **Start the backend server**
   ```bash
   cd server
   npm run dev
   ```

2. **Start the frontend development server**
   ```bash
   cd client
   npm run dev
   ```

3. **Access the application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000
   - Health Check: http://localhost:5000/health

## 📡 API Endpoints

### Authentication
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `POST /api/auth/logout` - User logout
- `POST /api/auth/refresh` - Refresh JWT token
- `POST /api/auth/forgot-password` - Password reset

### KYC Management
- `POST /api/kyc/submit` - Submit KYC documents
- `GET /api/kyc/status` - Check KYC status
- `PUT /api/kyc/update` - Update KYC information

### Blockchain Operations
- `POST /api/blockchain/create-wallet` - Create new wallet
- `GET /api/blockchain/balance` - Get wallet balance
- `POST /api/blockchain/digital-id/create` - Create digital ID
- `GET /api/blockchain/digital-id/qr` - Generate QR code for digital ID

### Admin Operations
- `GET /api/admin/users` - Get all users
- `PUT /api/admin/kyc/approve` - Approve KYC application
- `PUT /api/admin/kyc/reject` - Reject KYC application
- `GET /api/admin/analytics` - Get system analytics

### User Management
- `GET /api/user/profile` - Get user profile
- `PUT /api/user/profile` - Update user profile
- `GET /api/user/notifications` - Get user notifications

## 🔧 Technology Stack

### Frontend
- **React 19** - UI library
- **Vite** - Build tool and dev server
- **Tailwind CSS** - Utility-first CSS framework
- **React Router** - Client-side routing
- **Axios** - HTTP client
- **Socket.IO Client** - Real-time communication
- **Web3.js** - Ethereum blockchain interaction
- **React Hot Toast** - Notification system
- **Recharts** - Data visualization
- **Hero Icons** - Icon library

### Backend
- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **Firebase Admin** - Authentication and storage
- **Web3.js** - Blockchain integration
- **Ethers.js** - Ethereum library
- **JWT** - Token-based authentication
- **Winston** - Logging
- **Helmet** - Security middleware
- **CORS** - Cross-origin resource sharing
- **Rate Limiting** - API protection
- **Multer** - File upload handling

### Database & Storage
- **Firebase Firestore** - Document database
- **Firebase Storage** - File storage
- **Firebase Authentication** - User management

### Blockchain
- **Ethereum Mainnet** - Primary blockchain
- **Infura** - Ethereum node provider
- **BIP39** - Mnemonic seed phrases
- **HDKey** - Hierarchical deterministic wallets

## 🔒 Security Features

- **Helmet.js** for security headers
- **CORS** configuration for cross-origin requests
- **Rate limiting** to prevent abuse
- **Input sanitization** to prevent XSS attacks
- **JWT token** authentication with refresh mechanism
- **Request timeout** protection
- **Error handling** with detailed logging
- **Private key encryption** for wallet security

## 🚀 Deployment

### Production Build

1. **Build the frontend**
   ```bash
   cd client
   npm run build
   ```

2. **Start production server**
   ```bash
   cd server
   npm start
   ```

### Deployment Platforms
- **Frontend**: Vercel, Netlify, or Firebase Hosting
- **Backend**: Render.com, Heroku, or AWS EC2
- **Database**: Firebase Firestore
- **Storage**: Firebase Storage

### Environment Variables for Production
Make sure to set all environment variables in your deployment platform:
- Firebase configuration
- Infura API keys
- JWT secrets
- Email service credentials

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🔄 Version History

- **v1.0.0** - Initial release with core features
  - KYC verification system
  - Blockchain integration
  - Digital identity management
  - Emergency response system
  - Admin dashboard

## 🙏 Acknowledgments

- Firebase for authentication and storage services
- Ethereum community for blockchain infrastructure
- React team for the amazing frontend framework
- All contributors who helped build this platform

---

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

A Smart Tourist Safety Monitoring & Incident Response System built with AI, Blockchain, and Geo-Fencing.
